#!/bin/bash

# Script de setup complet pour le simulateur de phishing éducatif
# Auteur: Assistant Claude
# Date: $(date +%Y-%m-%d)

set -e  # Arrêter le script en cas d'erreur

echo "🎣 Setup du Simulateur de Phishing Éducatif"
echo "=========================================="

# Variables
PROJECT_NAME="phishing-simulator"
CURRENT_DIR=$(pwd)

# Couleurs pour l'output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Fonctions utilitaires
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Vérification des prérequis
check_prerequisites() {
    log_info "Vérification des prérequis..."
    
    if ! command -v node &> /dev/null; then
        log_error "Node.js n'est pas installé. Veuillez l'installer depuis https://nodejs.org/"
        exit 1
    fi
    
    if ! command -v npm &> /dev/null; then
        log_error "npm n'est pas installé."
        exit 1
    fi
    
    if ! command -v git &> /dev/null; then
        log_error "Git n'est pas installé."
        exit 1
    fi
    
    log_success "Tous les prérequis sont satisfaits"
}

# Création de la structure de dossiers
create_directory_structure() {
    log_info "Création de la structure de dossiers..."
    
    # Supprimer le dossier s'il existe déjà
    if [ -d "$PROJECT_NAME" ]; then
        log_warning "Le dossier $PROJECT_NAME existe déjà. Suppression..."
        rm -rf "$PROJECT_NAME"
    fi
    
    mkdir -p "$PROJECT_NAME"
    cd "$PROJECT_NAME"
    
    # Structure backend
    mkdir -p backend/src/{controllers,routes,services,middleware,models,utils}
    mkdir -p backend/prisma/migrations
    mkdir -p backend/logs
    
    # Structure frontend
    mkdir -p frontend/src/{components,pages,services,utils,styles}
    mkdir -p frontend/public
    
    # Structure nginx et autres
    mkdir -p nginx
    mkdir -p database
    
    log_success "Structure de dossiers créée"
}

# Création des fichiers de configuration racine
create_root_files() {
    log_info "Création des fichiers de configuration racine..."
    
    # README.md
    cat > README.md << 'EOF'
# 🎣 Simulateur de Phishing Éducatif

## Description
Plateforme de simulation de phishing pour la formation en cybersécurité.

## ⚠️ USAGE ÉTHIQUE UNIQUEMENT
- Formation interne d'entreprise uniquement
- Accord écrit de la direction requis
- Respect des lois locales sur la protection des données

## Installation

### Prérequis
- Node.js 18+
- PostgreSQL 14+
- Docker (optionnel)

### Démarrage rapide
```bash
# Cloner le projet
git clone https://github.com/votre-org/phishing-simulator
cd phishing-simulator

# Configuration
cp .env.example .env
# Éditer .env avec vos paramètres

# Docker (recommandé)
docker-compose up -d

# Ou installation manuelle
cd backend && npm install
cd ../frontend && npm install

# Base de données
cd backend && npx prisma migrate dev

# Démarrer les services
npm run dev # dans backend/
npm start   # dans frontend/
```

## Licence
Usage interne uniquement - Pas de redistribution
EOF

    # .env.example
    cat > .env.example << 'EOF'
# Base de données
DB_PASSWORD=motdepasse_super_securise
DATABASE_URL="postgresql://phishing_user:motdepasse_super_securise@localhost:5432/phishing_simulator"

# JWT
JWT_SECRET="votre_cle_jwt_de_32_caracteres_minimum"
JWT_EXPIRES_IN="24h"

# Email SMTP
SMTP_HOST="smtp.votredomaine.com"
SMTP_PORT=587
SMTP_SECURE=true
SMTP_USER="phishing-sim@votredomaine.com"
SMTP_PASS="mot_de_passe_email"
SMTP_FROM="phishing-sim@votredomaine.com"

# URLs
FRONTEND_URL="https://phishing-sim.votredomaine.com"
BACKEND_URL="https://api-phishing-sim.votredomaine.com"

# Sécurité
ALLOWED_DOMAINS="votreentreprise.com,filiale.com"
ENCRYPTION_KEY="cle_de_chiffrement_32_caracteres"
RATE_LIMIT_WINDOW=900000
RATE_LIMIT_MAX=100

# Logs
LOG_LEVEL="info"
LOG_FILE="./logs/app.log"

# Redis (optionnel, pour cache)
REDIS_URL="redis://localhost:6379"
EOF

    # .gitignore
    cat > .gitignore << 'EOF'
# Dependencies
node_modules/
npm-debug.log*

# Environment
.env
.env.local
.env.production

# Database
*.db
*.sqlite

# Logs
logs/
*.log

# Build
build/
dist/

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db

# Docker
.docker/

# Sensitive
ssl/
*.pem
*.key
EOF

    # docker-compose.yml
    cat > docker-compose.yml << 'EOF'
version: '3.8'

services:
  postgres:
    image: postgres:15-alpine
    container_name: phishing-sim-db
    environment:
      POSTGRES_DB: phishing_simulator
      POSTGRES_USER: phishing_user
      POSTGRES_PASSWORD: ${DB_PASSWORD}
    volumes:
      - postgres_data:/var/lib/postgresql/data
      - ./database/init.sql:/docker-entrypoint-initdb.d/init.sql
    ports:
      - "5432:5432"
    networks:
      - phishing-network

  backend:
    build: 
      context: ./backend
      dockerfile: Dockerfile
    container_name: phishing-sim-backend
    ports:
      - "3001:3001"
    environment:
      NODE_ENV: production
      DATABASE_URL: postgresql://phishing_user:${DB_PASSWORD}@postgres:5432/phishing_simulator
      JWT_SECRET: ${JWT_SECRET}
      SMTP_HOST: ${SMTP_HOST}
      SMTP_PORT: ${SMTP_PORT}
      SMTP_USER: ${SMTP_USER}
      SMTP_PASS: ${SMTP_PASS}
    depends_on:
      - postgres
    networks:
      - phishing-network
    volumes:
      - ./logs:/app/logs

  frontend:
    build:
      context: ./frontend
      dockerfile: Dockerfile
    container_name: phishing-sim-frontend
    ports:
      - "3000:3000"
    environment:
      REACT_APP_API_URL: http://localhost:3001
      REACT_APP_APP_NAME: "Simulateur Phishing Éducatif"
    depends_on:
      - backend
    networks:
      - phishing-network

  nginx:
    image: nginx:alpine
    container_name: phishing-sim-proxy
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - ./nginx/nginx.conf:/etc/nginx/nginx.conf
      - ./nginx/ssl:/etc/nginx/ssl
    depends_on:
      - frontend
      - backend
    networks:
      - phishing-network

volumes:
  postgres_data:

networks:
  phishing-network:
    driver: bridge
EOF

    log_success "Fichiers de configuration racine créés"
}

# Création des fichiers backend
create_backend_files() {
    log_info "Création des fichiers backend..."
    
    cd backend
    
    # package.json
    cat > package.json << 'EOF'
{
  "name": "phishing-simulator-backend",
  "version": "1.0.0",
  "description": "Backend pour simulateur de phishing éducatif",
  "main": "src/server.js",
  "scripts": {
    "start": "node src/server.js",
    "dev": "nodemon src/server.js",
    "test": "jest",
    "migrate": "prisma migrate dev",
    "generate": "prisma generate",
    "studio": "prisma studio",
    "seed": "node prisma/seed.js"
  },
  "dependencies": {
    "express": "^4.18.2",
    "cors": "^2.8.5",
    "helmet": "^7.0.0",
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2",
    "nodemailer": "^6.9.4",
    "prisma": "^5.2.0",
    "@prisma/client": "^5.2.0",
    "uuid": "^9.0.0",
    "dotenv": "^16.3.1",
    "express-rate-limit": "^6.8.1",
    "express-validator": "^7.0.1",
    "winston": "^3.10.0",
    "compression": "^1.7.4",
    "cookie-parser": "^1.4.6"
  },
  "devDependencies": {
    "nodemon": "^3.0.1",
    "jest": "^29.6.2",
    "supertest": "^6.3.3"
  },
  "engines": {
    "node": ">=18.0.0"
  }
}
EOF

    # Dockerfile
    cat > Dockerfile << 'EOF'
FROM node:18-alpine

WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm ci --only=production

# Copier le code source
COPY . .

# Générer Prisma Client
RUN npx prisma generate

# Créer utilisateur non-root
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nodejs -u 1001

# Créer le dossier logs
RUN mkdir logs && chown nodejs:nodejs logs

USER nodejs

EXPOSE 3001

# Healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3001/health || exit 1

CMD ["npm", "start"]
EOF

    # .env
    cat > .env << 'EOF'
# Base de données locale par défaut
DATABASE_URL="postgresql://phishing_user:password123@localhost:5432/phishing_simulator"

# JWT
JWT_SECRET="votre_cle_jwt_de_32_caracteres_minimum_ici"
JWT_EXPIRES_IN="24h"

# Email SMTP (configurez avec vos paramètres)
SMTP_HOST="smtp.gmail.com"
SMTP_PORT=587
SMTP_SECURE=false
SMTP_USER="votre-email@gmail.com"
SMTP_PASS="votre-mot-de-passe-app"
SMTP_FROM="phishing-sim@votredomaine.com"

# URLs
FRONTEND_URL="http://localhost:3000"
BACKEND_URL="http://localhost:3001"

# Sécurité
ALLOWED_DOMAINS="votreentreprise.com"
ENCRYPTION_KEY="cle_de_chiffrement_32_caracteres"
RATE_LIMIT_WINDOW=900000
RATE_LIMIT_MAX=100

# Logs
LOG_LEVEL="info"
LOG_FILE="./logs/app.log"
EOF

    # Prisma schema
    cat > prisma/schema.prisma << 'EOF'
generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

model User {
  id        String   @id @default(cuid())
  email     String   @unique
  password  String
  name      String
  role      Role     @default(USER)
  active    Boolean  @default(true)
  lastLogin DateTime?
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt

  campaigns Campaign[]
  targets   Target[]
  
  @@map("users")
}

model Campaign {
  id          String         @id @default(cuid())
  name        String
  description String?
  templateId  String
  createdBy   String
  status      CampaignStatus @default(DRAFT)
  targetCount Int            @default(0)
  emailsSent  Int            @default(0)
  emailsOpened Int           @default(0)
  linksClicked Int           @default(0)
  createdAt   DateTime       @default(now())
  launchedAt  DateTime?
  completedAt DateTime?

  creator  User     @relation(fields: [createdBy], references: [id])
  template Template @relation(fields: [templateId], references: [id])
  targets  Target[]
  results  Result[]
  
  @@map("campaigns")
}

model Template {
  id          String     @id @default(cuid())
  name        String
  subject     String
  htmlContent String
  textContent String?
  category    String
  difficulty  Difficulty @default(EASY)
  isActive    Boolean    @default(true)
  createdAt   DateTime   @default(now())
  updatedAt   DateTime   @updatedAt
  
  campaigns Campaign[]
  
  @@map("templates")
}

model Target {
  id         String  @id @default(cuid())
  email      String
  name       String?
  department String?
  campaignId String
  userId     String?
  
  campaign Campaign @relation(fields: [campaignId], references: [id], onDelete: Cascade)
  user     User?    @relation(fields: [userId], references: [id])
  results  Result[]
  
  @@unique([email, campaignId])
  @@map("targets")
}

model Result {
  id            String     @id @default(cuid())
  targetId      String
  campaignId    String
  action        ActionType
  timestamp     DateTime   @default(now())
  ipAddress     String?
  userAgent     String?
  trackingToken String?
  metadata      Json?
  
  target   Target   @relation(fields: [targetId], references: [id], onDelete: Cascade)
  campaign Campaign @relation(fields: [campaignId], references: [id], onDelete: Cascade)
  
  @@map("results")
}

model TrackingToken {
  id         String   @id @default(cuid())
  token      String   @unique
  targetId   String
  campaignId String
  action     String
  isUsed     Boolean  @default(false)
  createdAt  DateTime @default(now())
  usedAt     DateTime?
  
  @@map("tracking_tokens")
}

enum Role {
  ADMIN
  USER
  VIEWER
}

enum CampaignStatus {
  DRAFT
  ACTIVE
  COMPLETED
  PAUSED
  CANCELLED
}

enum Difficulty {
  EASY
  MEDIUM
  HARD
  EXPERT
}

enum ActionType {
  EMAIL_SENT
  EMAIL_OPENED
  LINK_CLICKED
  DATA_SUBMITTED
  TRAINED
  REPORTED
}
EOF

    # Server principal
    cat > src/server.js << 'EOF'
const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const compression = require('compression');
const cookieParser = require('cookie-parser');
const rateLimit = require('express-rate-limit');

const logger = require('./utils/logger');
const authRoutes = require('./routes/auth');
const campaignRoutes = require('./routes/campaigns');
const templateRoutes = require('./routes/templates');
const statsRoutes = require('./routes/statistics');
const trackingRoutes = require('./routes/tracking');

require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3001;

// Middleware de sécurité
app.use(helmet({
  contentSecurityPolicy: {
    directives: {
      defaultSrc: ["'self'"],
      styleSrc: ["'self'", "'unsafe-inline'"],
      scriptSrc: ["'self'"],
      imgSrc: ["'self'", "data:", "https:"],
    },
  },
}));

// Rate limiting global
const limiter = rateLimit({
  windowMs: parseInt(process.env.RATE_LIMIT_WINDOW) || 15 * 60 * 1000,
  max: parseInt(process.env.RATE_LIMIT_MAX) || 100,
  message: 'Trop de requêtes, réessayez plus tard.',
  standardHeaders: true,
  legacyHeaders: false,
});
app.use(limiter);

// Middleware général
app.use(compression());
app.use(cors({
  origin: process.env.FRONTEND_URL || 'http://localhost:3000',
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization']
}));

app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));
app.use(cookieParser());

// Logging des requêtes
app.use((req, res, next) => {
  logger.info(`${req.method} ${req.url}`, {
    ip: req.ip,
    userAgent: req.get('User-Agent')
  });
  next();
});

// Routes
app.use('/api/auth', authRoutes);
app.use('/api/campaigns', campaignRoutes);
app.use('/api/templates', templateRoutes);
app.use('/api/statistics', statsRoutes);
app.use('/api/tracking', trackingRoutes);

// Route de santé
app.get('/health', (req, res) => {
  res.json({ 
    status: 'OK', 
    message: 'Simulateur de phishing éducatif actif',
    timestamp: new Date().toISOString(),
    uptime: process.uptime()
  });
});

// Middleware d'erreur global
app.use((err, req, res, next) => {
  logger.error('Erreur serveur:', err);
  res.status(500).json({ 
    error: 'Erreur interne du serveur',
    ...(process.env.NODE_ENV === 'development' && { details: err.message })
  });
});

// Route 404
app.use('*', (req, res) => {
  res.status(404).json({ error: 'Route non trouvée' });
});

// Démarrage du serveur
app.listen(PORT, () => {
  logger.info(`🎣 Serveur démarré sur le port ${PORT}`);
  logger.info(`📧 SMTP configuré: ${process.env.SMTP_HOST}:${process.env.SMTP_PORT}`);
  logger.info(`🔒 Domaines autorisés: ${process.env.ALLOWED_DOMAINS}`);
});

// Gestion des arrêts propres
process.on('SIGTERM', () => {
  logger.info('SIGTERM reçu, arrêt du serveur...');
  process.exit(0);
});

process.on('SIGINT', () => {
  logger.info('SIGINT reçu, arrêt du serveur...');
  process.exit(0);
});

module.exports = app;
EOF

    # Logger utility
    cat > src/utils/logger.js << 'EOF'
const winston = require('winston');
const path = require('path');

// Configuration des niveaux de log
const levels = {
  error: 0,
  warn: 1,
  info: 2,
  http: 3,
  debug: 4
};

const colors = {
  error: 'red',
  warn: 'yellow',
  info: 'green',
  http: 'magenta',
  debug: 'white'
};

winston.addColors(colors);

// Format personnalisé
const format = winston.format.combine(
  winston.format.timestamp({ format: 'YYYY-MM-DD HH:mm:ss:ms' }),
  winston.format.colorize({ all: true }),
  winston.format.printf(
    (info) => `${info.timestamp} ${info.level}: ${info.message}${
      info.stack ? '\n' + info.stack : ''
    }`
  )
);

// Transports
const transports = [
  // Console pour le développement
  new winston.transports.Console({ format }),
  
  // Fichier pour tous les logs
  new winston.transports.File({
    filename: process.env.LOG_FILE || './logs/app.log',
    format: winston.format.combine(
      winston.format.timestamp(),
      winston.format.json()
    )
  }),
  
  // Fichier séparé pour les erreurs
  new winston.transports.File({
    filename: './logs/error.log',
    level: 'error',
    format: winston.format.combine(
      winston.format.timestamp(),
      winston.format.json()
    )
  })
];

// Logger principal
const logger = winston.createLogger({
  level: process.env.LOG_LEVEL || 'info',
  levels,
  format,
  transports,
  // Ne pas planter sur les erreurs de log
  exitOnError: false
});

// Logger spécialisé pour la sécurité
const securityLogger = winston.createLogger({
  level: 'info',
  format: winston.format.combine(
    winston.format.timestamp(),
    winston.format.json()
  ),
  transports: [
    new winston.transports.File({
      filename: './logs/security.log'
    })
  ]
});

// Méthodes d'aide
logger.security = (message, meta = {}) => {
  const logEntry = {
    message,
    type: 'security',
    timestamp: new Date().toISOString(),
    ...meta
  };
  
  securityLogger.info(logEntry);
  logger.warn(`[SECURITY] ${message}`, meta);
};

logger.audit = (action, userId, details = {}) => {
  const auditEntry = {
    action,
    userId,
    timestamp: new Date().toISOString(),
    type: 'audit',
    ...details
  };
  
  logger.info(`[AUDIT] ${action}`, auditEntry);
};

// Créer le dossier logs s'il n'existe pas
const fs = require('fs');
const logsDir = './logs';
if (!fs.existsSync(logsDir)) {
  fs.mkdirSync(logsDir, { recursive: true });
}

module.exports = logger;
EOF

    # Routes simples pour démarrage
    cat > src/routes/auth.js << 'EOF'
const express = require('express');
const router = express.Router();

// Route de test
router.get('/test', (req, res) => {
  res.json({ message: 'Auth route works!' });
});

module.exports = router;
EOF

    cat > src/routes/campaigns.js << 'EOF'
const express = require('express');
const router = express.Router();

// Route de test
router.get('/test', (req, res) => {
  res.json({ message: 'Campaigns route works!' });
});

module.exports = router;
EOF

    cat > src/routes/templates.js << 'EOF'
const express = require('express');
const router = express.Router();

// Route de test
router.get('/test', (req, res) => {
  res.json({ message: 'Templates route works!' });
});

module.exports = router;
EOF

    cat > src/routes/statistics.js << 'EOF'
const express = require('express');
const router = express.Router();

// Route de test
router.get('/test', (req, res) => {
  res.json({ message: 'Statistics route works!' });
});

module.exports = router;
EOF

    cat > src/routes/tracking.js << 'EOF'
const express = require('express');
const router = express.Router();

// Route de test
router.get('/test', (req, res) => {
  res.json({ message: 'Tracking route works!' });
});

module.exports = router;
EOF

    # Controllers, services, middleware de base
    touch src/controllers/.gitkeep
    touch src/services/.gitkeep
    touch src/middleware/.gitkeep
    touch src/models/.gitkeep
    
    cd .. # Retour à la racine du projet
    
    log_success "Fichiers backend créés"
}

# Création des fichiers frontend
create_frontend_files() {
    log_info "Création des fichiers frontend..."
    
    cd frontend
    
    # package.json
    cat > package.json << 'EOF'
{
  "name": "phishing-simulator-frontend",
  "version": "1.0.0",
  "description": "Interface web pour simulateur de phishing éducatif",
  "private": true,
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-router-dom": "^6.15.0",
    "react-scripts": "5.0.1",
    "axios": "^1.5.0",
    "recharts": "^2.8.0",
    "react-hook-form": "^7.45.4",
    "@headlessui/react": "^1.7.17",
    "@heroicons/react": "^2.0.18",
    "tailwindcss": "^3.3.3",
    "autoprefixer": "^10.4.15",
    "postcss": "^8.4.29",
    "date-fns": "^2.30.0",
    "react-toastify": "^9.1.3",
    "clsx": "^2.0.0"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  },
  "proxy": "http://localhost:3001"
}
EOF

    # Dockerfile
    cat > Dockerfile << 'EOF'
# Build stage
FROM node:18-alpine as build

WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm ci --silent

# Copier le code source
COPY . .

# Build de l'application
RUN npm run build

# Production stage
FROM nginx:alpine

# Copier les fichiers buildés
COPY --from=build /app/build /usr/share/nginx/html

# Copier la configuration nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Créer utilisateur non-root
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nodejs -u 1001

# Changer les permissions
RUN chown -R nodejs:nodejs /usr/share/nginx/html
RUN chown -R nodejs:nodejs /var/cache/nginx
RUN chown -R nodejs:nodejs /var/log/nginx
RUN chown -R nodejs:nodejs /etc/nginx/conf.d

USER nodejs

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
EOF

    # nginx.conf
    cat > nginx.conf << 'EOF'
server {
    listen 3000;
    server_name localhost;
    
    # Sécurité
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header X-Content-Type-Options "nosniff" always;
    add_header X-XSS-Protection "1; mode=block" always;
    add_header Referrer-Policy "strict-origin-when-cross-origin" always;
    
    # Compression
    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript;
    
    # Root et index
    root /usr/share/nginx/html;
    index index.html;
    
    # Gestion des routes React
    location / {
        try_files $uri $uri/ /index.html;
    }
    
    # Cache des assets
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
    
    # Pas de cache pour index.html
    location = /index.html {
        add_header Cache-Control "no-cache, no-store, must-revalidate";
    }
}
EOF

    # .env
    cat > .env << 'EOF'
REACT_APP_API_URL=http://localhost:3001
REACT_APP_APP_NAME="Simulateur Phishing Éducatif"
GENERATE_SOURCEMAP=false
EOF

    # index.html
    cat > public/index.html << 'EOF'
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta name="description" content="Simulateur de phishing éducatif pour la formation en cybersécurité" />
    
    <!-- Sécurité -->
    <meta http-equiv="Content-Security-Policy" content="
      default-src 'self'; 
      script-src 'self' 'unsafe-inline'; 
      style-src 'self' 'unsafe-inline' https://fonts.googleapis.com; 
      font-src 'self' https://fonts.gstatic.com;
      img-src 'self' data: https:;
      connect-src 'self' %REACT_APP_API_URL%;
    ">
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    
    <title>🎣 Simulateur de Phishing Éducatif</title>
  </head>
  <body>
    <noscript>
      <div style="padding: 20px; text-align: center; font-family: Arial, sans-serif;">
        <h1>JavaScript requis</h1>
        <p>Cette application nécessite JavaScript pour fonctionner.</p>
        <p>Veuillez activer JavaScript dans votre navigateur.</p>
      </div>
    </noscript>
    <div id="root"></div>
  </body>
</html>
EOF

    # App.js simple
    cat > src/App.js << 'EOF'
import React from 'react';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>🎣 Simulateur de Phishing Éducatif</h1>
        <p>Interface en cours de développement...</p>
        <div style={{ marginTop: '20px', padding: '20px', backgroundColor: '#f0f8ff', borderRadius: '8px' }}>
          <h3>✅ Backend connecté</h3>
          <p>L'API est accessible sur <a href="http://localhost:3001/health">localhost:3001</a></p>
        </div>
      </header>
    </div>
  );
}

export default App;
EOF

    # index.js
    cat > src/index.js << 'EOF'
import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
EOF

    # CSS de base
    cat > src/App.css << 'EOF'
.App {
  text-align: center;
}

.App-header {
  background-color: #282c34;
  padding: 20px;
  color: white;
  min-height: 50vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: calc(10px + 2vmin);
}

.App-header h1 {
  margin-bottom: 20px;
}

.App-header p {
  font-size: 18px;
  margin-bottom: 20px;
}

.App-header a {
  color: #61dafb;
  text-decoration: none;
}

.App-header a:hover {
  text-decoration: underline;
}
EOF

    cat > src/index.css << 'EOF'
body {
  margin: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
    'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
    sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

code {
  font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New',
    monospace;
}

* {
  box-sizing: border-box;
}
EOF

    # Tailwind config
    cat > tailwind.config.js << 'EOF'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
    "./public/index.html"
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#eff6ff',
          500: '#3b82f6',
          600: '#2563eb',
          700: '#1d4ed8'
        },
        danger: {
          50: '#fef2f2',
          500: '#ef4444',
          600: '#dc2626',
          700: '#b91c1c'
        },
        success: {
          50: '#f0fdf4',
          500: '#22c55e',
          600: '#16a34a',
          700: '#15803d'
        },
        warning: {
          50: '#fffbeb',
          500: '#f59e0b',
          600: '#d97706',
          700: '#b45309'
        }
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif']
      },
      animation: {
        'fade-in': 'fadeIn 0.5s ease-in-out',
        'slide-up': 'slideUp 0.3s ease-out',
        'pulse-slow': 'pulse 3s cubic-bezier(0.4, 0, 0.6, 1) infinite'
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' }
        },
        slideUp: {
          '0%': { transform: 'translateY(10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' }
        }
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography')
  ],
}
EOF

    # PostCSS config
    cat > postcss.config.js << 'EOF'
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}
EOF

    # Fichiers gitkeep pour les dossiers vides
    touch src/components/.gitkeep
    touch src/pages/.gitkeep
    touch src/services/.gitkeep
    touch src/utils/.gitkeep
    
    cd .. # Retour à la racine du projet
    
    log_success "Fichiers frontend créés"
}

# Installation des dépendances
install_dependencies() {
    log_info "Installation des dépendances..."
    
    # Backend
    log_info "Installation des dépendances backend..."
    cd backend
    if npm install; then
        log_success "Dépendances backend installées"
    else
        log_warning "Erreur lors de l'installation des dépendances backend"
    fi
    cd ..
    
    # Frontend
    log_info "Installation des dépendances frontend..."
    cd frontend
    if npm install; then
        log_success "Dépendances frontend installées"
    else
        log_warning "Erreur lors de l'installation des dépendances frontend"
    fi
    cd ..
}

# Initialisation Git
initialize_git() {
    log_info "Initialisation du repository Git..."
    
    if git init; then
        git add .
        git commit -m "🎣 Initial commit - Simulateur de phishing éducatif

✨ Fonctionnalités incluées:
- Backend Node.js/Express avec Prisma ORM
- Frontend React avec Tailwind CSS
- Configuration Docker complète
- Structure de sécurité et logging
- Templates de base pour démarrage rapide

⚠️  USAGE ÉTHIQUE UNIQUEMENT
Formation interne d'entreprise - Respect des lois sur la protection des données"
        
        log_success "Repository Git initialisé avec commit initial"
    else
        log_warning "Erreur lors de l'initialisation Git"
    fi
}

# Création des scripts de démarrage
create_startup_scripts() {
    log_info "Création des scripts de démarrage..."
    
    # Script de démarrage global
    cat > start.sh << 'EOF'
#!/bin/bash

echo "🎣 Démarrage du Simulateur de Phishing Éducatif"
echo "=============================================="

# Vérifier que PostgreSQL est en marche
if ! pgrep -x "postgres" > /dev/null; then
    echo "⚠️  PostgreSQL n'est pas démarré. Veuillez le démarrer avant de continuer."
    echo "   Avec Docker: docker-compose up -d postgres"
    echo "   Ou installez PostgreSQL localement"
    exit 1
fi

echo "✅ PostgreSQL détecté"

# Démarrer le backend
echo "🚀 Démarrage du backend..."
cd backend
npm run dev &
BACKEND_PID=$!
cd ..

# Attendre que le backend soit prêt
sleep 5

# Démarrer le frontend
echo "🎨 Démarrage du frontend..."
cd frontend
npm start &
FRONTEND_PID=$!
cd ..

echo ""
echo "🎉 Application démarrée !"
echo "📱 Frontend: http://localhost:3000"
echo "🔧 Backend:  http://localhost:3001"
echo "💾 Health:   http://localhost:3001/health"
echo ""
echo "Appuyez sur Ctrl+C pour arrêter les services"

# Fonction pour arrêter proprement
cleanup() {
    echo ""
    echo "🛑 Arrêt des services..."
    kill $BACKEND_PID 2>/dev/null
    kill $FRONTEND_PID 2>/dev/null
    echo "✅ Services arrêtés"
    exit 0
}

trap cleanup SIGINT SIGTERM

# Attendre indéfiniment
wait
EOF

    chmod +x start.sh

    # Script de setup de base de données
    cat > setup-db.sh << 'EOF'
#!/bin/bash

echo "🗄️  Configuration de la base de données"
echo "======================================"

cd backend

# Générer le client Prisma
echo "📦 Génération du client Prisma..."
npx prisma generate

# Appliquer les migrations
echo "🔄 Application des migrations..."
npx prisma migrate dev --name init

# Optionnel: Seed data
if [ -f "prisma/seed.js" ]; then
    echo "🌱 Ajout des données de test..."
    npm run seed
fi

echo "✅ Base de données configurée !"
echo "🎯 Vous pouvez maintenant démarrer l'application avec: ./start.sh"

cd ..
EOF

    chmod +x setup-db.sh

    log_success "Scripts de démarrage créés"
}

# Instructions finales
show_final_instructions() {
    echo ""
    echo "🎉 SETUP TERMINÉ AVEC SUCCÈS !"
    echo "=============================="
    echo ""
    echo "📁 Projet créé dans: $(pwd)/$PROJECT_NAME"
    echo ""
    echo "🚀 PROCHAINES ÉTAPES:"
    echo ""
    echo "1️⃣  Entrer dans le projet:"
    echo "   cd $PROJECT_NAME"
    echo ""
    echo "2️⃣  Configurer l'environnement:"
    echo "   cp .env.example .env"
    echo "   # Puis éditer .env avec vos paramètres"
    echo ""
    echo "3️⃣  Option A - Avec Docker (recommandé):"
    echo "   docker-compose up -d"
    echo ""
    echo "3️⃣  Option B - Installation locale:"
    echo "   # Installer PostgreSQL localement"
    echo "   ./setup-db.sh     # Configurer la base"
    echo "   ./start.sh         # Démarrer l'application"
    echo ""
    echo "🌐 URLs une fois démarré:"
    echo "   Frontend: http://localhost:3000"
    echo "   Backend:  http://localhost:3001"
    echo "   Health:   http://localhost:3001/health"
    echo ""
    echo "📚 Documentation:"
    echo "   Consultez le README.md pour plus d'informations"
    echo ""
    echo "⚠️  RAPPEL IMPORTANT:"
    echo "   Ce simulateur est destiné à un usage éducatif UNIQUEMENT"
    echo "   Formation interne d'entreprise avec accord de la direction"
    echo ""
    echo "🔧 Pour pousser vers GitHub:"
    echo "   gh repo create phishing-simulator-educational --public"
    echo "   git remote add origin https://github.com/USERNAME/phishing-simulator-educational.git"
    echo "   git push -u origin main"
    echo ""
}

# Fonction principale
main() {
    log_info "Début du setup du simulateur de phishing éducatif"
    
    check_prerequisites
    create_directory_structure
    create_root_files
    create_backend_files
    create_frontend_files
    install_dependencies
    initialize_git
    create_startup_scripts
    
    show_final_instructions
}

# Exécution du script principal
main "$@"
