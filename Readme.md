# 🎣 Simulateur de Phishing Éducatif

<div align="center">

[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-18+-blue.svg)](https://reactjs.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14+-blue.svg)](https://postgresql.org/)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://docker.com/)
[![License](https://img.shields.io/badge/License-Internal_Use-red.svg)](#licence)

**Plateforme complète de simulation de phishing pour la formation en cybersécurité**

[📚 Documentation](#documentation) • [🚀 Installation](#installation) • [⚙️ Configuration](#configuration) • [🔧 Utilisation](#utilisation)

</div>

---

## ⚠️ AVERTISSEMENT — USAGE ÉTHIQUE UNIQUEMENT

> **🚨 IMPORTANT** : Cette application est exclusivement destinée à la **formation en cybersécurité** au sein d'entreprises. L'utilisation malveillante ou non autorisée est strictement interdite et peut être illégale.

### ✅ Usages autorisés

* Formation interne d'employés à la détection de phishing
* Sensibilisation à la cybersécurité en entreprise
* Tests de sécurité avec accord écrit de la direction
* Recherche académique en cybersécurité

### ❌ Usages interdits

* Attaques réelles de phishing
* Collecte non autorisée de données
* Usage en dehors du cadre éducatif/professionnel
* Distribution publique des templates

---

## 📋 Vue d'ensemble

Le **Simulateur de Phishing Éducatif** est une plateforme complète permettant aux équipes de sécurité de créer, lancer et analyser des campagnes de simulation de phishing à des fins de formation.

### 🎯 Objectifs

* **Sensibiliser** les employés aux techniques de phishing
* **Mesurer** le niveau de vigilance de l'organisation
* **Former** automatiquement les utilisateurs qui cliquent
* **Analyser** les résultats avec des rapports détaillés

### ✨ Fonctionnalités principales

| 🔧 **Administration**              | 📊 **Analytics**        | 🎓 **Formation**                 |
| ---------------------------------- | ----------------------- | -------------------------------- |
| Interface de création de campagnes | Dashboard temps réel    | Module de formation automatique  |
| Bibliothèque de templates          | Statistiques détaillées | Pages éducatives interactives    |
| Gestion des cibles                 | Tracking invisible      | Notifications de sensibilisation |
| Planification d'envoi              | Exports de rapports     | Ressources pédagogiques          |

### 🏗️ Architecture technique

```mermaid
graph TB
    subgraph "Frontend (React)"
        A[Dashboard Admin] --> B[Gestion Campagnes]
        B --> C[Templates d'emails]
        C --> D[Rapports & Stats]
    end
    
    subgraph "Backend (Node.js)"
        E[API REST] --> F[Service Email]
        F --> G[Tracking]
        G --> H[Base de données]
    end
    
    subgraph "Infrastructure"
        I[PostgreSQL] --> J[Redis Cache]
        J --> K[SMTP Service]
        K --> L[Docker Containers]
    end
    
    A --> E
    H --> I
```

---

## 🚀 Installation

### 📋 Prérequis

| Composant              | Version minimale | Recommandée |
| ---------------------- | ---------------- | ----------- |
| **Node.js**            | 18.0+            | 20.0+       |
| **npm**                | 8.0+             | 10.0+       |
| **PostgreSQL**         | 14.0+            | 15.0+       |
| **Git**                | 2.0+             | Dernière    |
| **Docker** (optionnel) | 20.0+            | Dernière    |

### 🎬 Installation automatique (Recommandée)

```bash
# 1. Télécharger le script d'installation
curl -fsSL https://raw.githubusercontent.com/votre-org/phishing-simulator/main/setup_phishing_simulator.sh -o setup.sh

# 2. Rendre le script exécutable
chmod +x setup.sh

# 3. Exécuter l'installation
./setup.sh
```

Le script va automatiquement :

* ✅ Vérifier les prérequis
* ✅ Créer la structure du projet
* ✅ Installer toutes les dépendances
* ✅ Configurer la base de données
* ✅ Initialiser le repository Git

### 🔧 Installation manuelle

<details>
<summary>👆 Cliquer pour voir les étapes manuelles</summary>

#### 1. Cloner le repository

```bash
git clone https://github.com/votre-org/phishing-simulator.git
cd phishing-simulator
```

#### 2. Installation des dépendances

```bash
# Backend
cd backend
npm install
cd ..

# Frontend  
cd frontend
npm install
cd ..
```

#### 3. Configuration de la base de données

```bash
# Copier le fichier d'environnement
cp .env.example .env

# Éditer avec vos paramètres
nano .env

# Initialiser la base de données
cd backend
npx prisma migrate dev --name init
npx prisma generate
cd ..
```

</details>

---

## ⚙️ Configuration

### 🔐 Variables d'environnement

Créez un fichier `.env` à la racine du projet :

```bash
# Copier le template
cp .env.example .env
```

#### 📝 Paramètres essentiels

```env
# Base de données PostgreSQL
DATABASE_URL="postgresql://user:password@localhost:5432/phishing_simulator"

# Sécurité JWT
JWT_SECRET="votre_cle_secrete_de_32_caracteres_minimum"

# Configuration SMTP
SMTP_HOST="smtp.votredomaine.com"
SMTP_PORT=587
SMTP_USER="phishing-sim@votredomaine.com"
SMTP_PASS="mot_de_passe_application"
SMTP_FROM="Sécurité IT <phishing-sim@votredomaine.com>"

# URLs de l'application
FRONTEND_URL="https://phishing-sim.votredomaine.com"
BACKEND_URL="https://api-phishing-sim.votredomaine.com"

# Sécurité
ALLOWED_DOMAINS="votreentreprise.com,filiale.com"
RATE_LIMIT_MAX=100
```

### 📧 Configuration SMTP

Pour envoyer les emails de simulation, configurez un service SMTP.

<details>
<summary>📮 Exemples de configuration SMTP</summary>

#### Gmail (avec mot de passe d'application)

```env
SMTP_HOST="smtp.gmail.com"
SMTP_PORT=587
SMTP_SECURE=false
SMTP_USER="votre-email@gmail.com"
SMTP_PASS="mot_de_passe_application"
```

#### Microsoft 365

```env
SMTP_HOST="smtp.office365.com"
SMTP_PORT=587
SMTP_SECURE=false
SMTP_USER="votre-email@votreentreprise.com"
SMTP_PASS="votre_mot_de_passe"
```

#### SendGrid

```env
SMTP_HOST="smtp.sendgrid.net"
SMTP_PORT=587
SMTP_USER="apikey"
SMTP_PASS="votre_cle_api_sendgrid"
```

</details>

### 🗄️ Base de données

#### Option A : PostgreSQL avec Docker (Recommandé)

```bash
# Démarrer PostgreSQL
docker-compose up -d postgres

# Appliquer les migrations
cd backend
npx prisma migrate dev
```

#### Option B : PostgreSQL local

```bash
# Installer PostgreSQL (Ubuntu/Debian)
sudo apt update
sudo apt install postgresql postgresql-contrib

# Créer la base de données
sudo -u postgres createdb phishing_simulator
sudo -u postgres createuser phishing_user

# Configurer les permissions
sudo -u postgres psql -c "ALTER USER phishing_user PASSWORD 'password123';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE phishing_simulator TO phishing_user;"
```

---

## 🚀 Démarrage

### 🐳 Avec Docker (Production)

```bash
# Démarrer tous les services
docker-compose up -d

# Vérifier le statut
docker-compose ps

# Voir les logs
docker-compose logs -f
```

**URLs une fois démarré :**

* 🌐 **Frontend** : [http://localhost:3000](http://localhost:3000)
* 🔧 **Backend API** : [http://localhost:3001](http://localhost:3001)
* 💾 **Health Check** : [http://localhost:3001/health](http://localhost:3001/health)

### 🛠️ En développement local

```bash
# Option 1 : Script automatique
./start.sh

# Option 2 : Démarrage manuel

# Terminal 1 - Backend
cd backend
npm run dev

# Terminal 2 - Frontend  
cd frontend
npm start
```

### 🔍 Vérification de l'installation

1. **Backend** : Aller sur [http://localhost:3001/health](http://localhost:3001/health)

```json
{
  "status": "OK",
  "message": "Simulateur de phishing éducatif actif",
  "timestamp": "2024-12-20T10:30:00.000Z"
}
```

2. **Frontend** : Aller sur [http://localhost:3000](http://localhost:3000)

* Interface de connexion visible
* Pas d'erreurs dans la console

3. **Base de données** :

```bash
cd backend
npx prisma studio
```

---

## 🔧 Utilisation

### 👥 Comptes par défaut

| Rôle            | Email            | Mot de passe | Permissions                |
| --------------- | ---------------- | ------------ | -------------------------- |
| **Admin**       | `admin@test.com` | `admin123`   | Toutes les fonctionnalités |
| **Utilisateur** | `user@test.com`  | `user123`    | Création de campagnes      |

> 🔐 **Sécurité** : Changez ces mots de passe en production !

### 📊 Workflow typique

```mermaid
sequenceDiagram
    participant A as Administrateur
    participant S as Système
    participant E as Employés
    
    A->>S: 1. Créer une campagne
    A->>S: 2. Sélectionner un template
    A->>S: 3. Importer liste d'emails
    A->>S: 4. Lancer la campagne
    S->>E: 5. Envoyer emails de phishing
    E->>S: 6. Ouvrir email / Cliquer lien
    S->>E: 7. Redirection vers formation
    S->>A: 8. Rapports et statistiques
```

### 🎯 Créer votre première campagne

1. **Connexion** : Utilisez les identifiants admin
2. **Nouveau template** : Aller dans "Templates" → "Créer"
3. **Nouvelle campagne** : "Campagnes" → "Créer"
4. **Ajouter des cibles** : Importer CSV ou saisie manuelle
5. **Lancer** : Vérifier et envoyer

### 📈 Analyser les résultats

* **Dashboard** : Vue d'ensemble en temps réel
* **Détails campagne** : Tracking individuel par cible
* **Rapports** : Export CSV/PDF pour présentation
* **Timeline** : Évolution des clics dans le temps

---

## 🏗️ Architecture détaillée

### 🖥️ Frontend (React)

```
frontend/src/
├── components/          # Composants réutilisables
│   ├── Dashboard.js     # Tableau de bord principal
│   ├── CampaignForm.js  # Création de campagnes
│   ├── TemplateEditor.js # Éditeur d'emails
│   └── Statistics.js    # Graphiques et stats
├── pages/              # Pages principales
│   ├── Login.js        # Authentification
│   ├── Campaigns.js    # Liste des campagnes
│   └── Reports.js      # Rapports détaillés
├── services/           # Services API
│   ├── api.js         # Client HTTP
│   └── auth.js        # Gestion authentification
└── utils/             # Utilitaires
```

### 🔧 Backend (Node.js)

```
backend/src/
├── controllers/        # Logique métier
│   ├── campaignController.js
│   ├── templateController.js
│   └── authController.js
├── routes/            # Routes API
│   ├── campaigns.js   # CRUD campagnes
│   ├── templates.js   # Gestion templates
│   └── tracking.js    # Suivi des clics
├── services/          # Services métier
│   ├── emailService.js    # Envoi d'emails
│   └── trackingService.js # Analytics
├── middleware/        # Middleware Express
│   ├── auth.js       # Authentification JWT
│   └── security.js   # Sécurité et validation
└── utils/            # Utilitaires
    └── logger.js     # Logging Winston
```

### 💾 Base de données (PostgreSQL)

```sql
-- Tables principales
Users         -> Administrateurs et utilisateurs
Campaigns     -> Campagnes de phishing
Templates     -> Templates d'emails
Targets       -> Cibles des campagnes
Results       -> Résultats (clics, ouvertures)
TrackingTokens -> Tokens de suivi uniques
```

---

## 🔒 Sécurité

### 🛡️ Mesures de protection intégrées

| Composant            | Protection                                            |
| -------------------- | ----------------------------------------------------- |
| **API**              | Rate limiting, validation des entrées, CORS configuré |
| **Authentification** | JWT avec expiration, mots de passe hachés (bcrypt)    |
| **Base de données**  | Requêtes préparées (Prisma), pas de SQL raw           |
| **Frontend**         | CSP headers, validation côté client, XSS protection   |
| **Email**            | Templates sanitisés, domaines autorisés uniquement    |
| **Logs**             | Audit trail complet, logs de sécurité séparés         |

### 🔐 Bonnes pratiques de déploiement

```bash
# Production : Variables d'environnement sécurisées
export JWT_SECRET=$(openssl rand -base64 32)
export ENCRYPTION_KEY=$(openssl rand -base64 32)

# Base de données : Connexions chiffrées
DATABASE_URL="postgresql://user:pass@host:5432/db?sslmode=require"

# HTTPS obligatoire en production
FRONTEND_URL="https://phishing-sim.votreentreprise.com"
```

### 🚨 Monitoring et alertes

* **Logs de sécurité** : Tentatives de connexion, accès non autorisés
* **Métriques** : Taux d'erreur, temps de réponse, usage
* **Alertes** : Échecs d'authentification répétés, pics de trafic

---

## 📊 API Documentation

### 🔑 Authentification

```bash
# Connexion
POST /api/auth/login
{
  "email": "admin@test.com",
  "password": "admin123"
}

# Réponse
{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user": {
    "id": "cm123...",
    "name": "Admin",
    "role": "ADMIN"
  }
}
```

### 📧 Campagnes

<details>
<summary>👆 Voir les endpoints des campagnes</summary>

```bash
# Lister les campagnes
GET /api/campaigns
Authorization: Bearer <token>

# Créer une campagne
POST /api/campaigns
{
  "name": "Test Phishing Q1",
  "description": "Campagne de formation trimestrielle",
  "templateId": "cm123...",
  "targets": [
    {"email": "employee1@company.com", "name": "Jean Dupont"},
    {"email": "employee2@company.com", "name": "Marie Martin"}
  ]
}

# Lancer une campagne
POST /api/campaigns/:id/launch

# Statistiques d'une campagne
GET /api/campaigns/:id/stats
```

</details>

### 📝 Templates

<details>
<summary>👆 Voir les endpoints des templates</summary>

```bash
# Lister les templates
GET /api/templates

# Créer un template
POST /api/templates
{
  "name": "Mise à jour sécurité",
  "subject": "Action requise - Mise à jour sécurité",
  "htmlContent": "<html>...</html>",
  "category": "security",
  "difficulty": "MEDIUM"
}

# Prévisualiser un template
POST /api/templates/preview
{
  "htmlContent": "<html>...</html>",
  "variables": {"targetName": "Jean Dupont"}
}
```

</details>

---

## 🐳 Déploiement

### 🚀 Déploiement Docker (Production)

```bash
# 1. Cloner en production
git clone https://github.com/votre-org/phishing-simulator.git
cd phishing-simulator

# 2. Configuration production
cp .env.example .env.production
# Éditer avec les valeurs de production

# 3. Build et démarrage
docker-compose -f docker-compose.prod.yml up -d

# 4. Vérification
docker-compose ps
curl -f http://localhost/health
```

### ☁️ Déploiement cloud

<details>
<summary>🌩️ AWS / Azure / GCP</summary>

#### AWS (ECS + RDS)

```bash
# 1. Créer l'infrastructure
aws cloudformation deploy --template-file aws-template.yml

# 2. Déployer l'application
aws ecs update-service --cluster phishing-sim --service backend
```

#### Azure (Container Instances)

```bash
# 1. Créer le groupe de ressources
az group create --name phishing-sim-rg --location eastus

# 2. Déployer les containers
az container create --resource-group phishing-sim-rg --file azure-containers.yml
```

</details>

### 🔄 CI/CD Pipeline

```yaml
# .github/workflows/deploy.yml
name: Deploy Phishing Simulator

on:
  push:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run tests
        run: |
          cd backend && npm test
          cd frontend && npm test

  deploy:
    needs: test
    runs-on: ubuntu-latest
    steps:
      - name: Deploy to production
        run: |
          ssh production "cd /opt/phishing-sim && git pull && docker-compose up -d"
```

---

## 🧪 Tests

### 🔬 Tests automatisés

```bash
# Tests backend
cd backend
npm test                    # Tests unitaires
npm run test:integration   # Tests d'intégration
npm run test:e2e          # Tests end-to-end

# Tests frontend
cd frontend
npm test                   # Tests composants React
npm run test:coverage     # Couverture de code
```

### ✅ Tests manuels

* [ ] **Authentification** : Connexion/déconnexion
* [ ] **Création campagne** : Workflow complet
* [ ] **Envoi email** : Réception et tracking
* [ ] **Formation** : Redirection après clic
* [ ] **Rapports** : Export des données
* [ ] **Sécurité** : Rate limiting, validation

---

## 🐛 Résolution de problèmes

### ❗ Problèmes courants

<details>
<summary>🚫 Erreur de connexion à la base de données</summary>

```bash
# Vérifier que PostgreSQL fonctionne
sudo systemctl status postgresql

# Tester la connexion
psql "postgresql://user:pass@localhost:5432/phishing_simulator"

# Vérifier les permissions
sudo -u postgres psql -c "\du"
```

</details>

<details>
<summary>📧 Emails non envoyés</summary>

```bash
# Vérifier la configuration SMTP
cd backend
node -e "
const nodemailer = require('nodemailer');
const transporter = nodemailer.createTransporter({
  host: process.env.SMTP_HOST,
  port: process.env.SMTP_PORT,
  auth: { user: process.env.SMTP_USER, pass: process.env.SMTP_PASS }
});
transporter.verify().then(console.log).catch(console.error);
"

# Tester l'envoi
npm run test:email
```

</details>

<details>
<summary>🔒 Erreurs d'authentification</summary>

```bash
# Vérifier le secret JWT
echo $JWT_SECRET | wc -c  # Doit faire > 32 caractères

# Régénérer le secret
openssl rand -base64 32

# Vérifier les tokens en cours
cd backend
npx prisma studio  # Voir table Users
```

</details>

### 📞 Support

* **Documentation** : Consultez ce README et les commentaires du code
* **Issues GitHub** : Créez un ticket avec les détails du problème
* **Logs** : Consultez `backend/logs/app.log` pour le debug
* **Community** : Partagez vos retours d'expérience

---

## 🤝 Contribution

### 📋 Guidelines de contribution

1. **Fork** le repository
2. **Créer une branche** : `git checkout -b feature/ma-fonctionnalite`
3. **Commit** : `git commit -m "feat: ajout nouvelle fonctionnalité"`
4. **Push** : `git push origin feature/ma-fonctionnalite`
5. **Pull Request** : Décrire les changements

### 🎯 Roadmap

* [ ] **Templates avancés** : Éditeur WYSIWYG, A/B testing
* [ ] **Intelligence artificielle** : Personnalisation automatique
* [ ] **Intégrations** : LDAP/Active Directory, SIEM
* [ ] **Mobile** : Application mobile pour monitoring
* [ ] **Multi-langue** : Support international

---

## 📄 Licence

**Usage Interne Uniquement**

Cette application est destinée exclusivement à un usage **éducatif et professionnel interne**.

### ✅ Autorisations

* Utilisation en entreprise pour formation
* Modification pour adaptation aux besoins
* Déploiement interne sur infrastructure privée

### ❌ Interdictions

* Redistribution publique
* Usage commercial externe
* Utilisation malveillante
* Partage des templates de phishing

### ⚖️ Responsabilité légale

L'utilisateur est entièrement responsable de l'usage de cette application. Les auteurs ne peuvent être tenus responsables de toute utilisation non conforme aux lois en vigueur.

---

## 🙏 Remerciements

* **Équipe de développement** : Pour la création de cette plateforme
* **Community** : Pour les retours et améliorations
* **Open Source** : Libraries utilisées (React, Node.js, PostgreSQL, etc.)

<div align="center">

**🎣 Simulateur de Phishing Éducatif**

*Formez vos équipes, protégez votre organisation*

[![⭐ Star sur GitHub](https://img.shields.io/github/stars/votre-org/phishing-simulator?style=social)](https://github.com/votre-org/phishing-simulator/stargazers)

</div>
