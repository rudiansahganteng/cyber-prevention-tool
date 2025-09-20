echo -e "   ${WHITE}Health Check:${NC}          http://localhost:3001/health"
    echo -e "   ${WHITE}API Documentation:${NC}     http://localhost:3001/api/info"
    echo ""
    
    echo -e "${CYAN}${BOLD}👤 COMPTES DE TEST SÉCURISÉS:${NC}"
    echo -e "   ${WHITE}Admin:${NC}    admin@cybertest.local / ${GREEN}SecureAdmin2024!${NC}"
    echo -e "   ${WHITE}Manager:${NC}  manager@cybertest.local / ${GREEN}SecureManager2024!${NC}"
    echo -e "   ${WHITE}User:${NC}     user@cybertest.local / ${GREEN}SecureUser2024!${NC}"
    echo ""
    
    echo -e "${YELLOW}${BOLD}⚙️ CONFIGURATION OBLIGATOIRE:${NC}"
    echo -e "   ${WHITE}1.${NC} Éditez le fichier ${WHITE}.env${NC} pour configurer SMTP :"
    echo -e "      ${BLUE}nano .env${NC}"
    echo -e "      Configurez: SMTP_HOST, SMTP_USER, SMTP_PASS"
    echo ""
    echo -e "   ${WHITE}2.${NC} Adaptez les domaines autorisés :"
    echo -e "      ${BLUE}ALLOWED_DOMAINS=\"votreentreprise.com,filiale.com\"${NC}"
    echo ""
    echo -e "   ${WHITE}3.${NC} Changez les clés de sécurité en production :"
    echo -e "      JWT_SECRET, ENCRYPTION_KEY, SESSION_SECRET"
    echo ""
    
    echo -e "${PURPLE}${BOLD}📋 COMMANDES DISPONIBLES:${NC}"
    echo -e "   ${WHITE}./start.sh${NC}           🚀 Démarrer l'application"
    echo -e "   ${WHITE}./stop.sh${NC}            🛑 Arrêter les services"
    echo -e "   ${WHITE}./start-docker.sh${NC}    🐳 Démarrer avec Docker"
    echo -e "   ${WHITE}./check-system.sh${NC}    🔍 Vérifier l'installation"
    echo -e "   ${WHITE}./backup-db.sh${NC}       💾 Sauvegarder la base de données"
    echo ""
    
    echo -e "${GREEN}${BOLD}✨ FONCTIONNALITÉS INSTALLÉES:${NC}"
    echo -e "   ${WHITE}✅${NC} Interface d'administration moderne et sécurisée"
    echo -e "   ${WHITE}✅${NC} Système d'authentification JWT avec sessions"
    echo -e "   ${WHITE}✅${NC} Création de campagnes de phishing éducatif"
    echo -e "   ${WHITE}✅${NC} Bibliothèque de templates personnalisables"
    echo -e "   ${WHITE}✅${NC} Tracking invisible et analytics en temps réel"
    echo -e "   ${WHITE}✅${NC} Formation automatique des utilisateurs"
    echo -e "   ${WHITE}✅${NC} Rapports détaillés et exports de données"
    echo -e "   ${WHITE}✅${NC} Système de notifications avancé"
    echo -e "   ${WHITE}✅${NC} Gestion multi-utilisateurs avec rôles"
    echo -e "   ${WHITE}✅${NC} Audit logs complets pour conformité"
    echo -e "   ${WHITE}✅${NC} Protection contre toutes attaques web communes"
    echo -e "   ${WHITE}✅${NC} Configuration Docker production-ready"
    echo ""
    
    echo -e "${BLUE}${BOLD}🛡️ SÉCURITÉ INTÉGRÉE:${NC}"
    echo -e "   ${WHITE}🔒${NC} Chiffrement des mots de passe avec bcrypt"
    echo -e "   ${WHITE}🔒${NC} Headers de sécurité complets (CSP, HSTS, etc.)"
    echo -e "   ${WHITE}🔒${NC} Rate limiting intelligent multi-niveaux"
    echo -e "   ${WHITE}🔒${NC} Protection CSRF avec tokens dynamiques"
    echo -e "   ${WHITE}🔒${NC} Validation et sanitisation des données"
    echo -e "   ${WHITE}🔒${NC} Sessions sécurisées avec Redis (optionnel)"
    echo -e "   ${WHITE}🔒${NC} Logging de sécurité et monitoring"
    echo ""
    
    echo -e "${CYAN}${BOLD}🔧 DÉPANNAGE RAPIDE:${NC}"
    echo -e "   ${WHITE}❌ Port occupé:${NC}        Utilisez ${BLUE}./stop.sh${NC} puis ${BLUE}./start.sh${NC}"
    echo -e "   ${WHITE}❌ DB non accessible:${NC}  Vérifiez PostgreSQL avec ${BLUE}systemctl status postgresql${NC}"
    echo -e "   ${WHITE}❌ Emails non envoyés:${NC} Configurez SMTP dans ${BLUE}.env${NC}"
    echo -e "   ${WHITE}❌ Permissions:${NC}        Exécutez ${BLUE}chmod +x *.sh${NC}"
    echo ""
    
    echo -e "${GREEN}${BOLD}🌐 DÉPLOIEMENT EN PRODUCTION:${NC}"
    echo -e "   ${WHITE}1.${NC} Utilisez ${WHITE}docker-compose.yml${NC} pour la production"
    echo -e "   ${WHITE}2.${NC} Configurez un reverse proxy (Nginx) avec HTTPS"
    echo -e "   ${WHITE}3.${NC} Activez les sauvegardes automatiques de DB"
    echo -e "   ${WHITE}4.${NC} Configurez le monitoring et les alertes"
    echo -e "   ${WHITE}5.${NC} Changez TOUS les mots de passe par défaut"
    echo ""
    
    echo -e "${RED}${BOLD}⚠️ AVERTISSEMENT LÉGAL IMPORTANT:${NC}"
    echo -e "${YELLOW}┌─────────────────────────────────────────────────────────────────┐${NC}"
    echo -e "${YELLOW}│  Cette application est destinée EXCLUSIVEMENT à la formation   │${NC}"
    echo -e "${YELLOW}│  en cybersécurité dans un cadre professionnel légal.           │${NC}"
    echo -e "${YELLOW}│                                                                 │${NC}"
    echo -e "${YELLOW}│  ✅ AUTORISÉ: Formation interne, tests avec accord direction   │${NC}"
    echo -e "${YELLOW}│  ❌ INTERDIT: Usage malveillant, collecte non autorisée        │${NC}"
    echo -e "${YELLOW}│                                                                 │${NC}"
    echo -e "${YELLOW}│  L'utilisateur est responsable du respect des lois locales.    │${NC}"
    echo -e "${YELLOW}└─────────────────────────────────────────────────────────────────┘${NC}"
    echo ""
    
    echo -e "${PURPLE}${BOLD}🚀 PROCHAINES ÉTAPES RECOMMANDÉES:${NC}"
    echo -e "   ${WHITE}1.${NC} Démarrer l'application : ${BLUE}cd $PROJECT_NAME && ./start.sh${NC}"
    echo -e "   ${WHITE}2.${NC} Se connecter avec le compte admin"
    echo -e "   ${WHITE}3.${NC} Configurer SMTP pour l'envoi d'emails"
    echo -e "   ${WHITE}4.${NC} Créer votre première campagne de test"
    echo -e "   ${WHITE}5.${NC} Former votre équipe sur l'utilisation"
    echo ""
    
    echo -e "${GREEN}${BOLD}🎯 OBJECTIF ATTEINT !${NC}"
    echo -e "Votre Cyber Prevention Tool est maintenant prêt à sensibiliser"
    echo -e "votre organisation aux risques de phishing de manière éthique."
    echo ""
    
    echo -e "${BLUE}${BOLD}💡 SUPPORT ET RESSOURCES:${NC}"
    echo -e "   ${WHITE}📚 Documentation:${NC}  Consultez le dossier ${BLUE}docs/${NC}"
    echo -e "   ${WHITE}🔍 Logs:${NC}           Dossier ${BLUE}logs/${NC} pour le debug"
    echo -e "   ${WHITE}⚙️ Configuration:${NC}   Fichier ${BLUE}.env${NC} pour les paramètres"
    echo -e "   ${WHITE}🗄️ Base de données:${NC} Accessible via ${BLUE}cd backend && npx prisma studio${NC}"
    echo ""
    
    echo -e "${YELLOW}=============================================================================${NC}"
    echo -e "${GREEN}${BOLD}Merci d'utiliser le Cyber Prevention Tool !${NC}"
    echo -e "${WHITE}Installation réalisée avec succès en $(date '+%Y-%m-%d à %H:%M:%S')${NC}"
    echo ""
    
    # Proposer de démarrer immédiatement
    echo -e "${CYAN}Voulez-vous démarrer l'application maintenant ? [Y/n]:${NC} "
    read -r -n 1 response
    echo ""
    
    if [[ $response =~ ^[Yy]$ ]] || [[ -z $response ]]; then
        echo -e "${GREEN}🚀 Démarrage de l'application...${NC}"
        sleep 2
        cd "$INSTALL_DIR"
        exec ./start.sh
    else
        echo -e "${BLUE}Pour démarrer plus tard, utilisez:${NC}"
        echo -e "${WHITE}cd $PROJECT_NAME && ./start.sh${NC}"
    fi
}

# Fonction principale avec gestion d'erreurs robuste
main() {
    setup_logging
    print_header
    
    log_info "🛡️ Début de l'installation du Cyber Prevention Tool v$SCRIPT_VERSION"
    log_info "Répertoire d'installation: $INSTALL_DIR"
    log_info "Logs disponibles dans: $LOG_DIR"
    echo ""
    
    # Vérifications préalables critiques
    check_os_compatibility
    check_permissions
    check_available_ports
    check_disk_space
    check_internet_connection
    check_existing_installation
    
    # Installation des composants
    install_system_dependencies || { log_error "Échec installation dépendances système"; exit 1; }
    install_nodejs || { log_error "Échec installation Node.js"; exit 1; }
    install_postgresql || { log_error "Échec installation PostgreSQL"; exit 1; }
    install_docker || log_warning "Docker non installé (optionnel)"
    
    # Création du projet
    create_project_structure || { log_error "Échec création structure"; exit 1; }
    generate_config_files || { log_error "Échec génération config"; exit 1; }
    generate_backend_files || { log_error "Échec génération backend"; exit 1; }
    generate_frontend_files || { log_error "Échec génération frontend"; exit 1; }
    
    # Installation et configuration
    install_dependencies || { log_error "Échec installation dépendances"; exit 1; }
    setup_database || { log_error "Échec configuration base de données"; exit 1; }
    create_management_scripts || { log_error "Échec création scripts"; exit 1; }
    initialize_git || log_warning "Git non initialisé (optionnel)"
    
    # Finalisation
    show_final_instructions
    
    log_success "🎉 Installation du Cyber Prevention Tool terminée avec succès !"
}

# Gestion d'erreurs globale améliorée
handle_error() {
    local line_number=$1
    local error_code=$2
    local command="$3"
    
    log_error "Erreur ligne $line_number: commande '$command' (code: $error_code)"
    log_error "Installation interrompue de manière inattendue"
    
    echo ""
    echo -e "${RED}${BOLD}❌ ERREUR D'INSTALLATION${NC}"
    echo -e "${YELLOW}Ligne: $line_number | Code: $error_code${NC}"
    echo -e "${YELLOW}Commande: $command${NC}"
    echo ""
    echo -e "${BLUE}🔧 Actions recommandées:${NC}"
    echo -e "   1. Vérifiez les logs dans: $LOG_FILE"
    echo -e "   2. Vérifiez les erreurs dans: $ERROR_LOG"
    echo -e "   3. Relancez le script: ./install_cyber_prevention_tool.sh"
    echo -e "   4. Contactez le support avec les logs si le problème persiste"
    echo ""
    
    exit $error_code
}

# Configuration avancée des signaux et gestion d'erreurs
trap 'handle_error ${LINENO} $? "$BASH_COMMAND"' ERR
trap 'log_info "Installation interrompue par l utilisateur"; exit 130' SIGINT
trap 'log_info "Installation terminée par le système"; exit 143' SIGTERM

# Validation de l'environnement d'exécution
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    # Vérifier la version de Bash
    if [[ ${BASH_VERSION%%.*} -lt 4 ]]; then
        echo "❌ Bash 4.0+ requis. Version actuelle: $BASH_VERSION"
        exit 1
    fi
    
    # Vérifier les permissions d'exécution
    if [[ ! -x "${BASH_SOURCE[0]}" ]]; then
        echo "❌ Script non exécutable. Utilisez: chmod +x ${BASH_SOURCE[0]}"
        exit 1
    fi
    
    # Exécution avec protection
    main "$@"
fi    sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE cyber_prevention_db TO cyber_user;" || {
        log_error "Échec attribution permissions"
        return 1
    }
    
    sudo -u postgres psql -c "ALTER USER cyber_user CREATEDB;" || {
        log_error "Échec attribution privilège CREATEDB"
        return 1
    }
    
    # Configuration Prisma et migrations
    log_info "Configuration de Prisma et application des migrations..."
    cd backend || return 1
    
    # Générer le client Prisma
    if npx prisma generate; then
        log_success "✅ Client Prisma généré"
    else
        log_error "❌ Échec génération client Prisma"
        return 1
    fi
    
    # Appliquer les migrations
    if npx prisma migrate dev --name init --skip-generate; then
        log_success "✅ Migrations appliquées"
    else
        log_error "❌ Échec application migrations"
        return 1
    fi
    
    # Seed des données initiales
    log_info "Ajout des données de test sécurisées..."
    if npm run seed; then
        log_success "✅ Données de test ajoutées"
    else
        log_warning "⚠️ Échec du seed (continuant...)"
    fi
    
    cd .. || return 1
    
    # Test de connexion
    log_info "Test de connexion à la base de données..."
    if PGPASSWORD=CyberSecure2024! psql -h localhost -U cyber_user -d cyber_prevention_db -c "SELECT version();" >/dev/null 2>&1; then
        log_success "✅ Connexion base de données validée"
    else
        log_error "❌ Test de connexion échoué"
        return 1
    fi
    
    INSTALL_STATUS[database]=true
    show_progress 9 10 "Base de données"
}

# Création des scripts de gestion avancés
create_management_scripts() {
    log_step "Création des scripts de gestion"
    
    # Script de démarrage principal avec vérifications
    cat > start.sh << 'EOF'
#!/bin/bash

# =============================================================================
# CYBER PREVENTION TOOL - SCRIPT DE DÉMARRAGE SÉCURISÉ
# =============================================================================

set -euo pipefail

# Variables
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly LOG_FILE="$SCRIPT_DIR/logs/startup.log"
readonly PID_FILE="$SCRIPT_DIR/.cyber-prevention.pid"

# Couleurs
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly NC='\033[0m'

# Fonctions
log() {
    echo -e "${BLUE}[$(date '+%Y-%m-%d %H:%M:%S')]${NC} $1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE" 2>/dev/null || true
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [SUCCESS] $1" >> "$LOG_FILE" 2>/dev/null || true
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1" >&2
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [ERROR] $1" >> "$LOG_FILE" 2>/dev/null || true
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [WARNING] $1" >> "$LOG_FILE" 2>/dev/null || true
}

# Vérifications préalables
check_requirements() {
    log "🔍 Vérification des prérequis..."
    
    # Vérifier Node.js
    if ! command -v node >/dev/null 2>&1; then
        log_error "Node.js n'est pas installé"
        exit 1
    fi
    
    local node_version=$(node --version | sed 's/v//')
    local major_version=$(echo "$node_version" | cut -d. -f1)
    if [[ $major_version -lt 18 ]]; then
        log_error "Node.js version $node_version < 18 requise"
        exit 1
    fi
    
    # Vérifier PostgreSQL
    if ! command -v psql >/dev/null 2>&1; then
        log_error "PostgreSQL n'est pas installé"
        exit 1
    fi
    
    # Vérifier que PostgreSQL fonctionne
    if ! systemctl is-active --quiet postgresql; then
        log "🚀 Démarrage de PostgreSQL..."
        sudo systemctl start postgresql || {
            log_error "Impossible de démarrer PostgreSQL"
            exit 1
        }
    fi
    
    # Vérifier la base de données
    if ! PGPASSWORD=CyberSecure2024! psql -h localhost -U cyber_user -d cyber_prevention_db -c '\q' 2>/dev/null; then
        log_error "Impossible de se connecter à la base de données"
        log "Utilisez: ./setup-db.sh pour reconfigurer"
        exit 1
    fi
    
    # Vérifier les ports
    for port in 3000 3001; do
        if lsof -Pi :$port -sTCP:LISTEN -t >/dev/null 2>&1; then
            local pid=$(lsof -Pi :$port -sTCP:LISTEN -t)
            log_warning "Port $port occupé par PID $pid"
            
            read -p "Tuer le processus sur le port $port ? [y/N]: " -n 1 -r
            echo
            if [[ $REPLY =~ ^[Yy]$ ]]; then
                kill -9 "$pid" 2>/dev/null && log_success "Processus $pid arrêté"
                sleep 2
            else
                log_error "Port $port nécessaire pour le démarrage"
                exit 1
            fi
        fi
    done
    
    log_success "Tous les prérequis sont satisfaits"
}

# Démarrage des services
start_services() {
    log "🎯 Démarrage du Cyber Prevention Tool..."
    
    # Créer le dossier logs s'il n'existe pas
    mkdir -p logs
    
    # Démarrer le backend
    log "🔧 Démarrage du backend..."
    cd backend
    npm run dev > ../logs/backend.log 2>&1 &
    local backend_pid=$!
    cd ..
    
    # Attendre que le backend soit prêt
    log "⏳ Attente du backend..."
    for i in {1..60}; do
        if curl -s http://localhost:3001/health >/dev/null 2>&1; then
            log_success "Backend prêt"
            break
        fi
        sleep 1
        if [[ $i -eq 60 ]]; then
            log_error "Timeout - Backend non disponible après 60s"
            kill $backend_pid 2>/dev/null || true
            exit 1
        fi
    done
    
    # Démarrer le frontend
    log "🎨 Démarrage du frontend..."
    cd frontend
    npm start > ../logs/frontend.log 2>&1 &
    local frontend_pid=$!
    cd ..
    
    # Attendre que le frontend soit prêt
    log "⏳ Attente du frontend..."
    for i in {1..60}; do
        if curl -s http://localhost:3000 >/dev/null 2>&1; then
            log_success "Frontend prêt"
            break
        fi
        sleep 1
        if [[ $i -eq 60 ]]; then
            log_error "Timeout - Frontend non disponible après 60s"
            kill $backend_pid $frontend_pid 2>/dev/null || true
            exit 1
        fi
    done
    
    # Sauvegarder les PIDs
    echo "$backend_pid $frontend_pid" > "$PID_FILE"
    
    # Affichage des informations
    echo ""
    echo -e "${GREEN}🎉 Cyber Prevention Tool démarré avec succès !${NC}"
    echo -e "${BLUE}┌─────────────────────────────────────────────────────────┐${NC}"
    echo -e "${BLUE}│  🌐 Frontend:    http://localhost:3000                 │${NC}"
    echo -e "${BLUE}│  🔧 Backend:     http://localhost:3001                 │${NC}"
    echo -e "${BLUE}│  💾 Health:      http://localhost:3001/health          │${NC}"
    echo -e "${BLUE}│  📋 API Info:    http://localhost:3001/api/info        │${NC}"
    echo -e "${BLUE}└─────────────────────────────────────────────────────────┘${NC}"
    echo ""
    echo -e "${YELLOW}👤 Comptes de test:${NC}"
    echo "   Admin:   admin@cybertest.local / SecureAdmin2024!"
    echo "   Manager: manager@cybertest.local / SecureManager2024!"
    echo "   User:    user@cybertest.local / SecureUser2024!"
    echo ""
    echo -e "${YELLOW}⚙️ Configuration importante:${NC}"
    echo "   • Éditez le fichier .env pour configurer SMTP"
    echo "   • Adaptez ALLOWED_DOMAINS à votre organisation"
    echo "   • Consultez les logs dans le dossier ./logs/"
    echo ""
    echo -e "${BLUE}📋 Commandes utiles:${NC}"
    echo "   ./stop.sh           # Arrêter les services"
    echo "   ./check-system.sh   # Vérifier le système"
    echo "   ./backup-db.sh      # Sauvegarder la base"
    echo ""
    echo -e "${RED}⚠️ RAPPEL: Usage éthique et éducatif uniquement${NC}"
    echo ""
    echo "Appuyez sur Ctrl+C pour arrêter les services"
}

# Fonction de nettoyage
cleanup() {
    echo ""
    log "🛑 Arrêt des services..."
    
    if [[ -f "$PID_FILE" ]]; then
        local pids=$(cat "$PID_FILE")
        for pid in $pids; do
            if kill -0 "$pid" 2>/dev/null; then
                kill "$pid" 2>/dev/null && log_success "Service PID $pid arrêté"
            fi
        done
        rm -f "$PID_FILE"
    fi
    
    # Nettoyer les processus orphelins
    pkill -f "react-scripts start" 2>/dev/null || true
    pkill -f "nodemon" 2>/dev/null || true
    
    log_success "Arrêt complet"
    exit 0
}

# Configuration des signaux
trap cleanup SIGINT SIGTERM

# Vérifier si déjà en cours
if [[ -f "$PID_FILE" ]]; then
    local pids=$(cat "$PID_FILE")
    local running=false
    for pid in $pids; do
        if kill -0 "$pid" 2>/dev/null; then
            running=true
            break
        fi
    done
    
    if [[ "$running" == "true" ]]; then
        log_error "Cyber Prevention Tool semble déjà en cours d'exécution"
        log "Utilisez ./stop.sh pour l'arrêter d'abord"
        exit 1
    else
        rm -f "$PID_FILE"
    fi
fi

# Exécution principale
main() {
    check_requirements
    start_services
    
    # Attendre indéfiniment
    while true; do
        sleep 1
        
        # Vérifier que les services fonctionnent toujours
        if [[ -f "$PID_FILE" ]]; then
            local pids=$(cat "$PID_FILE")
            for pid in $pids; do
                if ! kill -0 "$pid" 2>/dev/null; then
                    log_error "Un service s'est arrêté de manière inattendue"
                    cleanup
                fi
            done
        fi
    done
}

# Point d'entrée
main "$@"
EOF

    chmod +x start.sh

    # Script d'arrêt
    cat > stop.sh << 'EOF'
#!/bin/bash

# Script d'arrêt sécurisé
readonly PID_FILE="./.cyber-prevention.pid"
readonly GREEN='\033[0;32m'
readonly RED='\033[0;31m'
readonly NC='\033[0m'

echo "🛑 Arrêt du Cyber Prevention Tool..."

if [[ -f "$PID_FILE" ]]; then
    pids=$(cat "$PID_FILE")
    for pid in $pids; do
        if kill -0 "$pid" 2>/dev/null; then
            echo "Arrêt du service PID $pid..."
            kill "$pid" 2>/dev/null
            
            # Attendre l'arrêt gracieux
            for i in {1..10}; do
                if ! kill -0 "$pid" 2>/dev/null; then
                    break
                fi
                sleep 1
            done
            
            # Force l'arrêt si nécessaire
            if kill -0 "$pid" 2>/dev/null; then
                echo "Arrêt forcé du PID $pid..."
                kill -9 "$pid" 2>/dev/null
            fi
        fi
    done
    rm -f "$PID_FILE"
fi

# Nettoyer les processus orphelins
pkill -f "react-scripts start" 2>/dev/null || true
pkill -f "nodemon" 2>/dev/null || true

echo -e "${GREEN}✅ Services arrêtés${NC}"
EOF

    chmod +x stop.sh

    # Script de vérification système avancé
    cat > check-system.sh << 'EOF'
#!/bin/bash

# =============================================================================
# CYBER PREVENTION TOOL - VÉRIFICATION SYSTÈME COMPLÈTE
# =============================================================================

set -euo pipefail

# Couleurs
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly NC='\033[0m'

# Fonction de vérification
check_item() {
    local description="$1"
    local command="$2"
    local expected="$3"
    
    printf "%-40s " "$description:"
    
    if eval "$command" >/dev/null 2>&1; then
        echo -e "${GREEN}✅ $expected${NC}"
        return 0
    else
        echo -e "${RED}❌ Échec${NC}"
        return 1
    fi
}

check_version() {
    local description="$1"
    local command="$2"
    local min_version="$3"
    
    printf "%-40s " "$description:"
    
    if command -v "$(echo "$command" | cut -d' ' -f1)" >/dev/null 2>&1; then
        local version=$(eval "$command" 2>/dev/null || echo "0")
        echo -e "${GREEN}✅ $version${NC}"
        return 0
    else
        echo -e "${RED}❌ Non installé${NC}"
        return 1
    fi
}

check_port() {
    local port="$1"
    local service="$2"
    
    printf "%-40s " "Port $port ($service):"
    
    if lsof -Pi :$port -sTCP:LISTEN -t >/dev/null 2>&1; then
        local pid=$(lsof -Pi :$port -sTCP:LISTEN -t)
        local process=$(ps -p $pid -o comm= 2>/dev/null || echo "inconnu")
        echo -e "${YELLOW}⚠️ Occupé (PID: $pid, Process: $process)${NC}"
        return 1
    else
        echo -e "${GREEN}✅ Libre${NC}"
        return 0
    fi
}

check_service_health() {
    local service="$1"
    local url="$2"
    
    printf "%-40s " "$service:"
    
    if curl -s --max-time 5 "$url" >/dev/null 2>&1; then
        echo -e "${GREEN}✅ Accessible${NC}"
        return 0
    else
        echo -e "${RED}❌ Non accessible${NC}"
        return 1
    fi
}

main() {
    echo -e "${BLUE}🔍 VÉRIFICATION SYSTÈME - CYBER PREVENTION TOOL${NC}"
    echo "================================================================="
    echo ""
    
    # Système de base
    echo -e "${BLUE}📦 Système de base:${NC}"
    check_version "OS" "uname -s" ""
    check_version "Architecture" "uname -m" ""
    check_item "Utilisateur" "test '$EUID' -ne 0" "Non-root OK"
    check_item "Sudo disponible" "sudo -n true" "OK"
    echo ""
    
    # Outils de développement
    echo -e "${BLUE}🛠️ Outils de développement:${NC}"
    check_version "Node.js" "node --version" "v18+"
    check_version "npm" "npm --version" ""
    check_version "Git" "git --version" ""
    check_item "Build tools" "command -v gcc" "GCC disponible"
    echo ""
    
    # Base de données
    echo -e "${BLUE}🗄️ Base de données:${NC}"
    check_version "PostgreSQL" "psql --version | head -n1" "14+"
    check_item "Service PostgreSQL" "systemctl is-active postgresql" "Actif"
    check_item "Connexion DB" "PGPASSWORD=CyberSecure2024! psql -h localhost -U cyber_user -d cyber_prevention_db -c '\q'" "OK"
    
    # Vérifier les tables
    printf "%-40s " "Tables de la DB:"
    table_count=$(PGPASSWORD=CyberSecure2024! psql -h localhost -U cyber_user -d cyber_prevention_db -t -c "SELECT count(*) FROM information_schema.tables WHERE table_schema = 'public';" 2>/dev/null | xargs || echo "0")
    if [[ $table_count -gt 0 ]]; then
        echo -e "${GREEN}✅ $table_count tables${NC}"
    else
        echo -e "${RED}❌ Aucune table${NC}"
    fi
    echo ""
    
    # Docker (optionnel)
    echo -e "${BLUE}🐳 Docker (optionnel):${NC}"
    check_version "Docker" "docker --version" ""
    check_version "Docker Compose" "docker-compose --version" ""
    echo ""
    
    # Ports
    echo -e "${BLUE}🌐 Ports:${NC}"
    check_port 3000 "Frontend"
    check_port 3001 "Backend"
    check_port 5432 "PostgreSQL"
    echo ""
    
    # Services en cours
    echo -e "${BLUE}🚀 Services:${NC}"
    check_service_health "Backend Health" "http://localhost:3001/health"
    check_service_health "Backend API" "http://localhost:3001/api/test"
    check_service_health "Frontend" "http://localhost:3000"
    echo ""
    
    # Fichiers de configuration
    echo -e "${BLUE}📄 Configuration:${NC}"
    check_item "Fichier .env" "test -f .env" "Présent"
    check_item "Backend package.json" "test -f backend/package.json" "Présent"
    check_item "Frontend package.json" "test -f frontend/package.json" "Présent"
    check_item "Schema Prisma" "test -f backend/prisma/schema.prisma" "Présent"
    echo ""
    
    # Dépendances Node.js
    echo -e "${BLUE}📦 Dépendances:${NC}"
    printf "%-40s " "Backend node_modules:"
    if [[ -d "backend/node_modules" ]]; then
        backend_deps=$(find backend/node_modules -maxdepth 1 -type d | wc -l)
        echo -e "${GREEN}✅ $backend_deps packages${NC}"
    else
        echo -e "${RED}❌ Manquant${NC}"
    fi
    
    printf "%-40s " "Frontend node_modules:"
    if [[ -d "frontend/node_modules" ]]; then
        frontend_deps=$(find frontend/node_modules -maxdepth 1 -type d | wc -l)
        echo -e "${GREEN}✅ $frontend_deps packages${NC}"
    else
        echo -e "${RED}❌ Manquant${NC}"
    fi
    echo ""
    
    # Logs et permissions
    echo -e "${BLUE}📝 Logs et permissions:${NC}"
    check_item "Dossier logs" "test -d logs" "Présent"
    check_item "Permissions logs" "test -w logs" "Écriture OK"
    check_item "Permissions projet" "test -w ." "Écriture OK"
    echo ""
    
    # Espace disque
    echo -e "${BLUE}💾 Espace disque:${NC}"
    printf "%-40s " "Espace disponible:"
    available_space=$(df . | awk 'NR==2{printf "%.1fGB", $4/1024/1024}')
    echo -e "${GREEN}✅ $available_space${NC}"
    
    printf "%-40s " "Taille du projet:"
    project_size=$(du -sh . 2>/dev/null | cut -f1 || echo "N/A")
    echo -e "${BLUE}📊 $project_size${NC}"
    echo ""
    
    # Réseau
    echo -e "${BLUE}🌍 Connectivité:${NC}"
    check_item "Internet" "ping -c 1 google.com" "OK"
    check_item "DNS" "nslookup github.com" "OK"
    echo ""
    
    # Sécurité
    echo -e "${BLUE}🔒 Sécurité:${NC}"
    printf "%-40s " "Variables sensibles:"
    if grep -q "CHANGEZ" .env 2>/dev/null; then
        echo -e "${RED}❌ Valeurs par défaut détectées${NC}"
    else
        echo -e "${GREEN}✅ Configurées${NC}"
    fi
    
    printf "%-40s " "Permissions fichiers:"
    if find . -name "*.sh" -perm 644 | grep -q .; then
        echo -e "${YELLOW}⚠️ Scripts non exécutables${NC}"
    else
        echo -e "${GREEN}✅ OK${NC}"
    fi
    echo ""
    
    # Recommandations
    echo -e "${YELLOW}💡 RECOMMANDATIONS:${NC}"
    echo "   1. Configurez SMTP dans .env pour envoyer des emails"
    echo "   2. Changez les mots de passe par défaut en production"
    echo "   3. Configurez ALLOWED_DOMAINS pour votre organisation"
    echo "   4. Activez HTTPS en production avec un reverse proxy"
    echo "   5. Configurez la sauvegarde automatique de la base"
    echo ""
    
    echo -e "${BLUE}🎯 Pour démarrer: ./start.sh${NC}"
    echo -e "${BLUE}🐳 Avec Docker: ./start-docker.sh${NC}"
    echo ""
}

main "$@"
EOF

    chmod +x check-system.sh

    # Script de sauvegarde de base de données
    cat > backup-db.sh << 'EOF'
#!/bin/bash

# Script de sauvegarde de la base de données
readonly BACKUP_DIR="./backups"
readonly TIMESTAMP=$(date +%Y%m%d_%H%M%S)
readonly BACKUP_FILE="$BACKUP_DIR/cyber_prevention_backup_$TIMESTAMP.sql"

echo "💾 Sauvegarde de la base de données..."

mkdir -p "$BACKUP_DIR"

if PGPASSWORD=CyberSecure2024! pg_dump -h localhost -U cyber_user -d cyber_prevention_db > "$BACKUP_FILE"; then
    gzip "$BACKUP_FILE"
    echo "✅ Sauvegarde créée: ${BACKUP_FILE}.gz"
    
    # Nettoyer les anciennes sauvegardes (garder les 10 dernières)
    find "$BACKUP_DIR" -name "*.sql.gz" -type f | sort -r | tail -n +11 | xargs rm -f
    echo "🧹 Anciennes sauvegardes nettoyées"
else
    echo "❌ Échec de la sauvegarde"
    exit 1
fi
EOF

    chmod +x backup-db.sh

    # Script de démarrage Docker
    cat > start-docker.sh << 'EOF'
#!/bin/bash

echo "🐳 Démarrage avec Docker Compose"
echo "=================================="

# Vérifier Docker
if ! command -v docker >/dev/null 2>&1; then
    echo "❌ Docker n'est pas installé"
    exit 1
fi

if ! command -v docker-compose >/dev/null 2>&1; then
    echo "❌ Docker Compose n'est pas installé"
    exit 1
fi

# Construire et démarrer
echo "🔨 Construction des images..."
docker-compose build --no-cache

echo "🚀 Démarrage des conteneurs..."
docker-compose up -d

# Attendre que les services soient prêts
echo "⏳ Attente des services..."
sleep 15

# Vérifier le statut
echo "📊 Statut des conteneurs:"
docker-compose ps

echo ""
echo "🎉 Application démarrée avec Docker !"
echo "┌─────────────────────────────────────────┐"
echo "│  🌐 Frontend: http://localhost:3000    │"
echo "│  🔧 Backend:  http://localhost:3001    │"
echo "│  💾 Health:   http://localhost:3001/health │"
echo "└─────────────────────────────────────────┘"
echo ""
echo "📋 Commandes utiles:"
echo "   docker-compose logs -f      # Voir les logs"
echo "   docker-compose stop         # Arrêter"
echo "   docker-compose down         # Arrêter et supprimer"
echo "   docker-compose restart      # Redémarrer"
EOF

    chmod +x start-docker.sh

    log_success "Scripts de gestion créés"
    show_progress 10 10 "Installation complète"
}

# Initialisation Git avec sécurité
initialize_git() {
    log_step "Initialisation du repository Git"
    
    if git init; then
        git add .
        git commit -m "🛡️ Installation complète - Cyber Prevention Tool v2.0

✨ Installation automatique sécurisée incluant:

🔧 BACKEND:
- API REST Node.js/Express avec sécurité avancée
- Base de données PostgreSQL avec Prisma ORM
- Authentification JWT et sessions sécurisées
- Rate limiting et protection CSRF
- Logging complet avec Winston
- Validation et sanitisation des données

🎨 FRONTEND:
- Interface React moderne avec Tailwind CSS
- Animations fluides avec Framer Motion
- Design responsive et accessible
- Progressive Web App (PWA)
- Error boundaries et gestion d'état

🛡️ SÉCURITÉ:
- Headers de sécurité complets (CSP, HSTS, etc.)
- Chiffrement des mots de passe avec bcrypt
- Variables d'environnement sécurisées
- Protection contre XSS, CSRF, injection SQL
- Audit logs et monitoring

🐳 DEVOPS:
- Configuration Docker multi-stage
- Scripts de gestion automatisés
- Health checks et monitoring
- Sauvegarde automatique de DB
- Déploiement production-ready

📦 DONNÉES:
- Base de données initialisée avec données de test
- Templates d'emails réalistes et variés
- Comptes sécurisés avec mots de passe forts
- Paramètres système configurés

🎯 COMPTES DE TEST:
- Admin: admin@cybertest.local / SecureAdmin2024!
- Manager: manager@cybertest.local / SecureManager2024!
- User: user@cybertest.local / SecureUser2024!

⚠️ USAGE ÉTHIQUE UNIQUEMENT
Formation en cybersécurité - Respect des lois
Accord de direction requis

🚀 DÉMARRAGE: ./start.sh
🐳 DOCKER: ./start-docker.sh
🔍 VÉRIFICATION: ./check-system.sh"
        
        log_success "Repository Git initialisé avec historique complet"
    else
        log_warning "Erreur lors de l'initialisation Git (continuant...)"
    fi
}

# Instructions finales avec récapitulatif complet
show_final_instructions() {
    clear
    print_header
    
    echo -e "${GREEN}${BOLD}🎉 INSTALLATION TERMINÉE AVEC SUCCÈS !${NC}"
    echo -e "${YELLOW}=============================================================================${NC}"
    echo ""
    
    echo -e "${WHITE}📁 Projet installé dans:${NC} $INSTALL_DIR"
    echo -e "${WHITE}⏱️  Temps d'installation:${NC} $(date '+%Y-%m-%d %H:%M:%S')"
    echo -e "${WHITE}📦 Version:${NC} Cyber Prevention Tool v2.0"
    echo ""
    
    echo -e "${CYAN}${BOLD}🚀 DÉMARRAGE IMMÉDIAT:${NC}"
    echo -e "${WHITE}cd $PROJECT_NAME${NC}"
    echo -e "${WHITE}./start.sh${NC}"
    echo ""
    
    echo -e "${BLUE}${BOLD}🌐 URLs de l'application:${NC}"
    echo -e "   ${WHITE}Interface principale:${NC}  http://localhost:3000"
    echo -e "   ${WHITE}API Backend:${NC}           http://localhost:3001"
    echo -e "   ${WHITE}Health Check:${NC}          http://localhost:3001/      case 'next': return 'from-blue-500 to-purple-500';
      default: return 'from-gray-500 to-gray-600';
    }
  };

  const getStatusBadge = (status) => {
    switch(status) {
      case 'required': return { text: 'Requis', color: 'bg-red-500' };
      case 'ready': return { text: 'Prêt', color: 'bg-green-500' };
      case 'next': return { text: 'Suivant', color: 'bg-blue-500' };
      default: return { text: 'En attente', color: 'bg-gray-500' };
    }
  };

  return (
    <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
      {features.map((feature, index) => {
        const statusBadge = getStatusBadge(feature.status);
        
        return (
          <motion.div
            key={index}
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: index * 0.1 }}
            whileHover={{ scale: 1.02, y: -4 }}
            className="bg-white bg-opacity-10 backdrop-blur-sm border border-white border-opacity-20 rounded-2xl p-6 hover:bg-opacity-15 transition-all duration-300"
          >
            <div className="flex items-start justify-between mb-4">
              <div className={`bg-gradient-to-r ${getStatusColor(feature.status)} p-3 rounded-xl`}>
                <span className="text-2xl">{feature.icon}</span>
              </div>
              <span className={`${statusBadge.color} text-white text-xs px-2 py-1 rounded-full`}>
                {statusBadge.text}
              </span>
            </div>
            
            <h3 className="text-lg font-semibold text-white mb-3">{feature.title}</h3>
            <p className="text-blue-100 text-sm leading-relaxed mb-4">{feature.description}</p>
            
            <div className="flex items-center text-blue-300 text-sm font-medium">
              <span>{feature.action}</span>
              <svg className="ml-2 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
              </svg>
            </div>
          </motion.div>
        );
      })}
    </div>
  );
};

export default FeatureGrid;
EOF

    # Composant ErrorBoundary
    cat > src/components/ErrorBoundary.js << 'EOF'
import React from 'react';

class ErrorBoundary extends React.Component {
  constructor(props) {
    super(props);
    this.state = { hasError: false, error: null, errorInfo: null };
  }

  static getDerivedStateFromError(error) {
    return { hasError: true };
  }

  componentDidCatch(error, errorInfo) {
    this.setState({
      error: error,
      errorInfo: errorInfo
    });
    
    // Log l'erreur (en production, vous pourriez l'envoyer à un service de monitoring)
    console.error('ErrorBoundary caught an error:', error, errorInfo);
  }

  render() {
    if (this.state.hasError) {
      return (
        <div className="min-h-screen bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900 flex items-center justify-center p-6">
          <div className="bg-white bg-opacity-10 backdrop-blur-lg border border-white border-opacity-20 rounded-2xl p-8 max-w-md w-full text-center">
            <div className="text-6xl mb-4">💥</div>
            <h2 className="text-2xl font-bold text-white mb-4">Oups ! Une erreur est survenue</h2>
            <p className="text-blue-100 mb-6">
              L'application a rencontré une erreur inattendue. Veuillez recharger la page.
            </p>
            
            <div className="space-y-3">
              <button
                onClick={() => window.location.reload()}
                className="w-full bg-blue-500 hover:bg-blue-600 text-white py-3 px-6 rounded-lg transition-colors duration-200 font-medium"
              >
                Recharger la page
              </button>
              
              <button
                onClick={() => this.setState({ hasError: false, error: null, errorInfo: null })}
                className="w-full bg-gray-500 bg-opacity-20 hover:bg-opacity-30 text-white py-3 px-6 rounded-lg transition-colors duration-200"
              >
                Réessayer
              </button>
            </div>
            
            {process.env.NODE_ENV === 'development' && this.state.error && (
              <details className="mt-6 text-left">
                <summary className="text-red-300 cursor-pointer text-sm">Détails de l'erreur (développement)</summary>
                <pre className="mt-2 text-xs text-red-200 bg-black bg-opacity-30 p-3 rounded overflow-auto max-h-40">
                  {this.state.error && this.state.error.toString()}
                  <br />
                  {this.state.errorInfo.componentStack}
                </pre>
              </details>
            )}
          </div>
        </div>
      );
    }

    return this.props.children;
  }
}

export default ErrorBoundary;
EOF

    # index.js principal
    cat > src/index.js << 'EOF'
import React from 'react';
import ReactDOM from 'react-dom/client';
import { HelmetProvider } from 'react-helmet-async';
import './index.css';
import App from './App';

// Configuration pour les performances
const root = ReactDOM.createRoot(document.getElementById('root'));

root.render(
  <React.StrictMode>
    <HelmetProvider>
      <App />
    </HelmetProvider>
  </React.StrictMode>
);

// Performance monitoring
if (process.env.NODE_ENV === 'development') {
  // Log des performances en développement
  if ('webVitals' in window) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(console.log);
      getFID(console.log);
      getFCP(console.log);
      getLCP(console.log);
      getTTFB(console.log);
    });
  }
}
EOF

    # Styles CSS modernes avec Tailwind
    cat > src/index.css << 'EOF'
@import 'tailwindcss/base';
@import 'tailwindcss/components';
@import 'tailwindcss/utilities';

/* Configuration des polices */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap');

/* Variables CSS personnalisées */
:root {
  --font-family-sans: 'Inter', ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, 'Noto Sans', sans-serif;
  --gradient-primary: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  --gradient-secondary: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
  --gradient-success: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
  --shadow-glass: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
  --border-glass: 1px solid rgba(255, 255, 255, 0.18);
}

/* Reset et base */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
  font-feature-settings: 'cv02', 'cv03', 'cv04', 'cv11';
}

body {
  font-family: var(--font-family-sans);
  font-weight: 400;
  line-height: 1.6;
  color: #ffffff;
  background: #0f172a;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  overflow-x: hidden;
}

/* Scrollbar personnalisée */
::-webkit-scrollbar {
  width: 8px;
}

::-webkit-scrollbar-track {
  background: rgba(15, 23, 42, 0.5);
}

::-webkit-scrollbar-thumb {
  background: rgba(99, 102, 241, 0.5);
  border-radius: 4px;
}

::-webkit-scrollbar-thumb:hover {
  background: rgba(99, 102, 241, 0.7);
}

/* Classes utilitaires personnalisées */
.glass-effect {
  background: rgba(255, 255, 255, 0.1);
  backdrop-filter: blur(10px);
  border: var(--border-glass);
  box-shadow: var(--shadow-glass);
}

.gradient-text {
  background: var(--gradient-primary);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.animate-float {
  animation: float 6s ease-in-out infinite;
}

.animate-glow {
  animation: glow 2s ease-in-out infinite alternate;
}

/* Animations personnalisées */
@keyframes float {
  0%, 100% {
    transform: translateY(0px);
  }
  50% {
    transform: translateY(-20px);
  }
}

@keyframes glow {
  from {
    box-shadow: 0 0 20px rgba(99, 102, 241, 0.5);
  }
  to {
    box-shadow: 0 0 30px rgba(99, 102, 241, 0.8);
  }
}

@keyframes shimmer {
  0% {
    background-position: -468px 0;
  }
  100% {
    background-position: 468px 0;
  }
}

.loading-shimmer {
  animation: shimmer 1.2s ease-in-out infinite;
  background: linear-gradient(90deg, #f0f0f0 25%, #e0e0e0 50%, #f0f0f0 75%);
  background-size: 400% 100%;
}

/* Focus states améliorés */
button:focus,
input:focus,
textarea:focus,
select:focus {
  outline: 2px solid #6366f1;
  outline-offset: 2px;
}

/* Transitions fluides */
.transition-all {
  transition-property: all;
  transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
  transition-duration: 300ms;
}

/* Container responsive */
.container {
  width: 100%;
  max-width: 1200px;
  margin-left: auto;
  margin-right: auto;
  padding-left: 1rem;
  padding-right: 1rem;
}

@media (min-width: 640px) {
  .container {
    padding-left: 1.5rem;
    padding-right: 1.5rem;
  }
}

@media (min-width: 1024px) {
  .container {
    padding-left: 2rem;
    padding-right: 2rem;
  }
}

/* États de chargement */
.skeleton {
  background: linear-gradient(90deg, #374151 25%, #4b5563 50%, #374151 75%);
  background-size: 200% 100%;
  animation: loading 1.5s infinite;
}

@keyframes loading {
  0% {
    background-position: 200% 0;
  }
  100% {
    background-position: -200% 0;
  }
}

/* Toast notifications personnalisées */
.Toastify__toast--dark {
  background: rgba(17, 24, 39, 0.95);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(75, 85, 99, 0.3);
}

.Toastify__toast--success {
  background: rgba(16, 185, 129, 0.1);
  border: 1px solid rgba(16, 185, 129, 0.3);
  color: #10b981;
}

.Toastify__toast--error {
  background: rgba(239, 68, 68, 0.1);
  border: 1px solid rgba(239, 68, 68, 0.3);
  color: #ef4444;
}

.Toastify__toast--warning {
  background: rgba(245, 158, 11, 0.1);
  border: 1px solid rgba(245, 158, 11, 0.3);
  color: #f59e0b;
}

/* Accessibilité */
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
}

/* Mode sombre par défaut */
@media (prefers-color-scheme: dark) {
  :root {
    color-scheme: dark;
  }
}

/* Styles pour l'impression */
@media print {
  body {
    background: white !important;
    color: black !important;
  }
  
  .no-print {
    display: none !important;
  }
}

/* Styles personnalisés pour les composants */
.cyber-card {
  @apply bg-white bg-opacity-10 backdrop-blur-sm border border-white border-opacity-20 rounded-xl p-6 transition-all duration-300 hover:bg-opacity-15 hover:border-opacity-30;
}

.cyber-button {
  @apply bg-gradient-to-r from-blue-500 to-purple-600 text-white font-medium py-3 px-6 rounded-lg transition-all duration-200 hover:from-blue-600 hover:to-purple-700 focus:ring-4 focus:ring-blue-500 focus:ring-opacity-50;
}

.cyber-input {
  @apply bg-white bg-opacity-10 border border-white border-opacity-20 rounded-lg px-4 py-3 text-white placeholder-blue-200 focus:bg-opacity-20 focus:border-blue-400 transition-all duration-200;
}

/* Responsive design amélioré */
@media (max-width: 640px) {
  .container {
    padding-left: 1rem;
    padding-right: 1rem;
  }
  
  h1 {
    font-size: 2.5rem !important;
  }
  
  h2 {
    font-size: 2rem !important;
  }
}
EOF

    # App.css avec styles spécifiques
    cat > src/App.css << 'EOF'
/* Styles spécifiques à l'App principale */

.App {
  min-height: 100vh;
  position: relative;
}

/* Animation d'entrée pour le logo */
.logo-container {
  transform-style: preserve-3d;
  animation: logoFloat 4s ease-in-out infinite;
}

@keyframes logoFloat {
  0%, 100% {
    transform: translateY(0) rotateY(0deg);
  }
  25% {
    transform: translateY(-10px) rotateY(5deg);
  }
  50% {
    transform: translateY(-5px) rotateY(0deg);
  }
  75% {
    transform: translateY(-8px) rotateY(-5deg);
  }
}

/* Effet de particules en arrière-plan */
.particles-bg::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: 
    radial-gradient(circle at 25% 25%, rgba(99, 102, 241, 0.1) 0%, transparent 50%),
    radial-gradient(circle at 75% 75%, rgba(168, 85, 247, 0.1) 0%, transparent 50%),
    radial-gradient(circle at 50% 50%, rgba(59, 130, 246, 0.05) 0%, transparent 50%);
  animation: particlesMove 20s ease-in-out infinite;
}

@keyframes particlesMove {
  0%, 100% {
    transform: translateY(0) rotate(0deg);
  }
  33% {
    transform: translateY(-10px) rotate(1deg);
  }
  66% {
    transform: translateY(5px) rotate(-1deg);
  }
}

/* Styles pour les cartes de statut */
.status-card {
  position: relative;
  overflow: hidden;
}

.status-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.1), transparent);
  transition: left 0.5s;
}

.status-card:hover::before {
  left: 100%;
}

/* Animations pour les éléments interactifs */
.interactive-element {
  position: relative;
  overflow: hidden;
  cursor: pointer;
}

.interactive-element::after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  width: 0;
  height: 0;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 50%;
  transform: translate(-50%, -50%);
  transition: width 0.3s, height 0.3s;
}

.interactive-element:active::after {
  width: 300px;
  height: 300px;
}

/* Styles pour les notifications toast personnalisées */
.custom-toast {
  border-radius: 12px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.1);
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .mobile-stack {
    flex-direction: column;
  }
  
  .mobile-full {
    width: 100%;
  }
  
  .mobile-text-center {
    text-align: center;
  }
}

/* États de chargement spécifiques */
.loading-pulse {
  animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
}

@keyframes pulse {
  0%, 100% {
    opacity: 1;
  }
  50% {
    opacity: 0.5;
  }
}

/* Transitions de page */
.page-transition-enter {
  opacity: 0;
  transform: translateY(20px);
}

.page-transition-enter-active {
  opacity: 1;
  transform: translateY(0);
  transition: opacity 300ms, transform 300ms;
}

.page-transition-exit {
  opacity: 1;
  transform: translateY(0);
}

.page-transition-exit-active {
  opacity: 0;
  transform: translateY(-20px);
  transition: opacity 300ms, transform 300ms;
}

/* Accessibilité - Focus visible amélioré */
.focus-visible {
  outline: 2px solid #6366f1;
  outline-offset: 2px;
  border-radius: 4px;
}

/* Mode contraste élevé */
@media (prefers-contrast: high) {
  .cyber-card {
    border-width: 2px;
    border-color: #ffffff;
  }
  
  .cyber-button {
    border: 2px solid #ffffff;
  }
}

/* Optimisations pour les performances */
.gpu-accelerated {
  transform: translateZ(0);
  will-change: transform;
}

.no-select {
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Dark mode spécifique */
@media (prefers-color-scheme: dark) {
  .auto-dark {
    color-scheme: dark;
  }
}
EOF

    # Configuration Tailwind
    cat > tailwind.config.js << 'EOF'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
    "./public/index.html"
  ],
  theme: {
    extend: {
      fontFamily: {
        'sans': ['Inter', 'ui-sans-serif', 'system-ui', '-apple-system', 'BlinkMacSystemFont', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif'],
      },
      colors: {
        cyber: {
          50: '#f0f9ff',
          100: '#e0f2fe',
          200: '#bae6fd',
          300: '#7dd3fc',
          400: '#38bdf8',
          500: '#0ea5e9',
          600: '#0284c7',
          700: '#0369a1',
          800: '#075985',
          900: '#0c4a6e',
          950: '#082f49',
        },
        dark: {
          50: '#f8fafc',
          100: '#f1f5f9',
          200: '#e2e8f0',
          300: '#cbd5e1',
          400: '#94a3b8',
          500: '#64748b',
          600: '#475569',
          700: '#334155',
          800: '#1e293b',
          900: '#0f172a',
          950: '#020617',
        }
      },
      animation: {
        'fade-in': 'fadeIn 0.5s ease-in-out',
        'slide-up': 'slideUp 0.3s ease-out',
        'slide-down': 'slideDown 0.3s ease-out',
        'scale-in': 'scaleIn 0.3s ease-out',
        'pulse-slow': 'pulse 3s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'float': 'float 6s ease-in-out infinite',
        'glow': 'glow 2s ease-in-out infinite alternate',
        'shimmer': 'shimmer 2s linear infinite',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' }
        },
        slideUp: {
          '0%': { transform: 'translateY(10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' }
        },
        slideDown: {
          '0%': { transform: 'translateY(-10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' }
        },
        scaleIn: {
          '0%': { transform: 'scale(0.95)', opacity: '0' },
          '100%': { transform: 'scale(1)', opacity: '1' }
        },
        float: {
          '0%, 100%': { transform: 'translateY(0px)' },
          '50%': { transform: 'translateY(-20px)' }
        },
        glow: {
          '0%': { boxShadow: '0 0 20px rgba(59, 130, 246, 0.5)' },
          '100%': { boxShadow: '0 0 30px rgba(59, 130, 246, 0.8)' }
        },
        shimmer: {
          '0%': { backgroundPosition: '-468px 0' },
          '100%': { backgroundPosition: '468px 0' }
        }
      },
      backdropBlur: {
        'xs': '2px',
      },
      spacing: {
        '18': '4.5rem',
        '88': '22rem',
        '128': '32rem',
      },
      borderRadius: {
        '4xl': '2rem',
        '5xl': '2.5rem',
      },
      boxShadow: {
        'glass': '0 8px 32px 0 rgba(31, 38, 135, 0.37)',
        'glow': '0 0 20px rgba(59, 130, 246, 0.5)',
        'glow-lg': '0 0 30px rgba(59, 130, 246, 0.7)',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms')({
      strategy: 'class',
    }),
    require('@tailwindcss/typography'),
    // Plugin personnalisé pour les utilitaires cyber
    function({ addUtilities }) {
      const newUtilities = {
        '.glass-effect': {
          'background': 'rgba(255, 255, 255, 0.1)',
          'backdrop-filter': 'blur(10px)',
          'border': '1px solid rgba(255, 255, 255, 0.18)',
          'box-shadow': '0 8px 32px 0 rgba(31, 38, 135, 0.37)',
        },
        '.cyber-gradient': {
          'background': 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
        },
        '.text-gradient': {
          'background': 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
          '-webkit-background-clip': 'text',
          '-webkit-text-fill-color': 'transparent',
          'background-clip': 'text',
        }
      }
      addUtilities(newUtilities)
    }
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

    # Créer les dossiers et fichiers gitkeep
    touch src/components/.gitkeep
    touch src/pages/.gitkeep
    touch src/services/.gitkeep
    touch src/utils/.gitkeep
    touch src/hooks/.gitkeep
    touch src/context/.gitkeep
    touch tests/.gitkeep

    cd .. # Retour à la racine
    INSTALL_STATUS[frontend_files]=true
    log_success "Frontend moderne généré avec interface sécurisée"
    show_progress 7 10 "Frontend"
}

# Installation et vérification des dépendances
install_dependencies() {
    if [[ "${INSTALL_STATUS[dependencies]}" == "true" ]]; then
        log_info "Dépendances déjà installées"
        show_progress 8 10 "Dépendances"
        return 0
    fi
    
    log_step "Installation des dépendances Node.js"
    
    # Backend dependencies
    log_info "Installation des dépendances backend..."
    cd backend || return 1
    
    if npm ci --prefer-offline --no-audit --progress=false; then
        log_success "✅ Dépendances backend installées"
    else
        log_error "❌ Échec installation dépendances backend"
        return 1
    fi
    
    cd .. || return 1
    
    # Frontend dependencies
    log_info "Installation des dépendances frontend..."
    cd frontend || return 1
    
    if npm ci --prefer-offline --no-audit --progress=false; then
        log_success "✅ Dépendances frontend installées"
    else
        log_error "❌ Échec installation dépendances frontend"
        return 1
    fi
    
    cd .. || return 1
    
    INSTALL_STATUS[dependencies]=true
    show_progress 8 10 "Dépendances"
}

# Configuration sécurisée de la base de données
setup_database() {
    if [[ "${INSTALL_STATUS[database]}" == "true" ]]; then
        log_info "Base de données déjà configurée"
        show_progress 9 10 "Base de données"
        return 0
    fi
    
    log_step "Configuration sécurisée de la base de données"
    
    # Vérifier que PostgreSQL fonctionne
    if ! sudo systemctl is-active --quiet postgresql; then
        log_info "Démarrage de PostgreSQL..."
        sudo systemctl start postgresql || {
            log_error "Impossible de démarrer PostgreSQL"
            return 1
        }
    fi
    
    # Attendre que PostgreSQL soit prêt
    log_info "Attente de PostgreSQL..."
    for i in {1..30}; do
        if sudo -u postgres psql -c '\q' 2>/dev/null; then
            break
        fi
        sleep 1
        if [[ $i -eq 30 ]]; then
            log_error "PostgreSQL ne répond pas après 30 secondes"
            return 1
        fi
    done
    
    # Supprimer la base existante si elle existe
    log_info "Nettoyage des données existantes..."
    sudo -u postgres psql -c "DROP DATABASE IF EXISTS cyber_prevention_db;" 2>/dev/null || true
    sudo -u postgres psql -c "DROP USER IF EXISTS cyber_user;" 2>/dev/null || true
    
    # Créer la base de données et l'utilisateur avec mot de passe sécurisé
    log_info "Création de la base de données..."
    sudo -u postgres psql -c "CREATE DATABASE cyber_prevention_db;" || {
        log_error "Échec création base de données"
        return 1
    }
    
    sudo -u postgres psql -c "CREATE USER cyber_user WITH PASSWORD 'CyberSecure2024!';" || {
        log_error "Échec création utilisateur"
        return 1
    }
    
    sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE cyber_prevention_db TO cyber_user;" ||# Utiliser l'utilisateur non-root
USER nodejs

EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:3000 || exit 1

CMD ["nginx", "-g", "daemon off;"]
EOF

    # Configuration Nginx optimisée
    cat > nginx.conf << 'EOF'
server {
    listen 3000;
    server_name localhost;
    root /usr/share/nginx/html;
    index index.html;

    # Headers de sécurité
    add_header X-Frame-Options "DENY" always;
    add_header X-Content-Type-Options "nosniff" always;
    add_header X-XSS-Protection "1; mode=block" always;
    add_header Referrer-Policy "strict-origin-when-cross-origin" always;
    add_header Permissions-Policy "geolocation=(), microphone=(), camera=()" always;
    
    # CSP Header pour sécurité
    add_header Content-Security-Policy "default-src 'self'; script-src 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://fonts.googleapis.com; font-src 'self' https://fonts.gstatic.com; img-src 'self' data: https:; connect-src 'self' http://localhost:3001;" always;

    # Compression
    gzip on;
    gzip_vary on;
    gzip_min_length 1024;
    gzip_proxied expired no-cache no-store private must-revalidate auth;
    gzip_types
        text/plain
        text/css
        text/xml
        text/javascript
        application/javascript
        application/xml+rss
        application/json;

    # Cache des assets statiques
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        expires 1y;
        add_header Cache-Control "public, no-transform, immutable";
        access_log off;
    }

    # Pas de cache pour l'index.html
    location = /index.html {
        add_header Cache-Control "no-cache, no-store, must-revalidate" always;
        add_header Pragma "no-cache" always;
        add_header Expires "0" always;
    }

    # Gestion des routes React (SPA)
    location / {
        try_files $uri $uri/ /index.html;
    }

    # API proxy vers le backend
    location /api/ {
        proxy_pass http://backend:3001;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_cache_bypass $http_upgrade;
    }

    # Sécurité - Bloquer les fichiers sensibles
    location ~ /\. {
        deny all;
        access_log off;
        log_not_found off;
    }

    location ~ \.(env|git|svn)$ {
        deny all;
        access_log off;
        log_not_found off;
    }
}
EOF

    # .env pour le frontend
    cat > .env << 'EOF'
REACT_APP_API_URL=http://localhost:3001
REACT_APP_APP_NAME="Cyber Prevention Tool"
REACT_APP_VERSION="2.0.0"
REACT_APP_ENVIRONMENT="development"
GENERATE_SOURCEMAP=false
DISABLE_ESLINT_PLUGIN=false
ESLINT_NO_DEV_ERRORS=true
EOF

    # index.html avec sécurité renforcée
    cat > public/index.html << 'EOF'
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="theme-color" content="#1f2937" />
    <meta name="description" content="Cyber Prevention Tool - Outil de formation en cybersécurité pour la prévention du phishing" />
    <meta name="keywords" content="cybersécurité, phishing, formation, prévention, sécurité informatique" />
    <meta name="author" content="Cyber Prevention Team" />
    
    <!-- Sécurité -->
    <meta http-equiv="Content-Security-Policy" content="
      default-src 'self';
      script-src 'self' 'unsafe-inline';
      style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
      font-src 'self' https://fonts.gstatic.com;
      img-src 'self' data: https: blob:;
      connect-src 'self' %REACT_APP_API_URL% ws: wss:;
      media-src 'self';
      object-src 'none';
      child-src 'self';
      frame-ancestors 'none';
      base-uri 'self';
      form-action 'self';
    ">
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <!-- PWA et mobile -->
    <link rel="apple-touch-icon" sizes="180x180" href="%PUBLIC_URL%/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="%PUBLIC_URL%/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="%PUBLIC_URL%/favicon-16x16.png" />
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    
    <!-- Préconnexions pour performance -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    
    <!-- Police Roboto pour UI moderne -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <title>%REACT_APP_APP_NAME%</title>
  </head>
  <body>
    <noscript>
      <div style="
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
        color: white;
        text-align: center;
        z-index: 9999;
      ">
        <div style="max-width: 500px; padding: 40px;">
          <h1 style="font-size: 2.5rem; margin-bottom: 1rem;">🛡️</h1>
          <h2 style="font-size: 1.5rem; margin-bottom: 1rem;">JavaScript requis</h2>
          <p style="font-size: 1.1rem; line-height: 1.6; margin-bottom: 2rem;">
            Cette application nécessite JavaScript pour fonctionner correctement.
          </p>
          <div style="background: rgba(255,255,255,0.1); padding: 20px; border-radius: 8px;">
            <p style="margin: 0; font-size: 1rem;">
              Veuillez activer JavaScript dans votre navigateur pour accéder au Cyber Prevention Tool.
            </p>
          </div>
        </div>
      </div>
    </noscript>
    
    <!-- Conteneur principal de l'application -->
    <div id="root"></div>
    
    <!-- Indicateur de chargement -->
    <div id="initial-loader" style="
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 9998;
    ">
      <div style="text-align: center; color: white;">
        <div style="
          width: 50px;
          height: 50px;
          border: 3px solid rgba(255,255,255,0.3);
          border-radius: 50%;
          border-top-color: white;
          animation: spin 1s ease-in-out infinite;
          margin: 0 auto 20px;
        "></div>
        <p style="font-family: Inter, sans-serif; font-size: 1.1rem;">Chargement du Cyber Prevention Tool...</p>
      </div>
    </div>
    
    <style>
      @keyframes spin {
        to { transform: rotate(360deg); }
      }
    </style>
    
    <script>
      // Masquer le loader une fois React chargé
      window.addEventListener('load', function() {
        setTimeout(function() {
          const loader = document.getElementById('initial-loader');
          if (loader) {
            loader.style.opacity = '0';
            loader.style.transition = 'opacity 0.5s ease-out';
            setTimeout(() => loader.remove(), 500);
          }
        }, 1000);
      });
    </script>
  </body>
</html>
EOF

    # manifest.json pour PWA
    cat > public/manifest.json << 'EOF'
{
  "short_name": "Cyber Prevention",
  "name": "Cyber Prevention Tool",
  "description": "Outil de formation en cybersécurité pour la prévention du phishing",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#1f2937",
  "background_color": "#ffffff",
  "categories": ["education", "security", "business"]
}
EOF

    # App.js principal avec interface moderne
    cat > src/App.js << 'EOF'
import React, { useState, useEffect } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import './App.css';

// Composants
import LoadingSpinner from './components/LoadingSpinner';
import StatusCard from './components/StatusCard';
import FeatureGrid from './components/FeatureGrid';
import ErrorBoundary from './components/ErrorBoundary';

function App() {
  const [appState, setAppState] = useState({
    backendStatus: 'checking',
    backendData: null,
    isLoading: true,
    error: null
  });

  useEffect(() => {
    checkBackendConnection();
  }, []);

  const checkBackendConnection = async () => {
    try {
      setAppState(prev => ({ ...prev, isLoading: true, error: null }));
      
      // Test de l'API
      const response = await fetch('/api/test', {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        },
        credentials: 'include'
      });

      if (!response.ok) {
        throw new Error(`HTTP ${response.status}: ${response.statusText}`);
      }

      const data = await response.json();
      
      setAppState({
        backendStatus: 'connected',
        backendData: data,
        isLoading: false,
        error: null
      });

    } catch (error) {
      console.error('Erreur connexion backend:', error);
      setAppState({
        backendStatus: 'error',
        backendData: null,
        isLoading: false,
        error: error.message
      });
    }
  };

  const handleRetry = () => {
    checkBackendConnection();
  };

  if (appState.isLoading) {
    return <LoadingSpinner />;
  }

  return (
    <ErrorBoundary>
      <div className="min-h-screen bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900">
        <div className="absolute inset-0 bg-[url('data:image/svg+xml,%3Csvg width="60" height="60" viewBox="0 0 60 60" xmlns="http://www.w3.org/2000/svg"%3E%3Cg fill="none" fill-rule="evenodd"%3E%3Cg fill="%23ffffff" fill-opacity="0.03"%3E%3Cpath d="M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z"/%3E%3C/g%3E%3C/g%3E%3C/svg%3E')] opacity-50"></div>
        
        <div className="relative z-10">
          {/* Header */}
          <motion.header 
            initial={{ opacity: 0, y: -20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.6 }}
            className="pt-16 pb-8"
          >
            <div className="container mx-auto px-6 text-center">
              <motion.div
                initial={{ scale: 0.9 }}
                animate={{ scale: 1 }}
                transition={{ duration: 0.5, delay: 0.2 }}
                className="inline-flex items-center justify-center w-24 h-24 bg-gradient-to-br from-blue-500 to-purple-600 rounded-2xl shadow-2xl mb-6"
              >
                <span className="text-4xl">🛡️</span>
              </motion.div>
              
              <motion.h1 
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.6, delay: 0.3 }}
                className="text-5xl md:text-7xl font-bold text-white mb-4"
              >
                Cyber Prevention Tool
              </motion.h1>
              
              <motion.p 
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.6, delay: 0.4 }}
                className="text-xl md:text-2xl text-blue-100 max-w-3xl mx-auto leading-relaxed"
              >
                Plateforme de formation en cybersécurité pour la prévention du phishing
              </motion.p>
              
              <motion.div 
                initial={{ opacity: 0, scale: 0.9 }}
                animate={{ opacity: 1, scale: 1 }}
                transition={{ duration: 0.5, delay: 0.5 }}
                className="mt-6 inline-flex items-center px-4 py-2 bg-green-500 bg-opacity-20 rounded-full border border-green-400 border-opacity-30"
              >
                <div className="w-2 h-2 bg-green-400 rounded-full mr-3 animate-pulse"></div>
                <span className="text-green-100 font-medium">Installation réussie - Version 2.0</span>
              </motion.div>
            </div>
          </motion.header>

          {/* Main Content */}
          <main className="container mx-auto px-6 pb-16">
            <div className="max-w-6xl mx-auto">
              
              {/* Status Section */}
              <motion.section 
                initial={{ opacity: 0, y: 40 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.6, delay: 0.6 }}
                className="mb-16"
              >
                <StatusCard 
                  status={appState.backendStatus}
                  data={appState.backendData}
                  error={appState.error}
                  onRetry={handleRetry}
                />
              </motion.section>

              {/* Features Grid */}
              <motion.section 
                initial={{ opacity: 0, y: 40 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.6, delay: 0.8 }}
                className="mb-16"
              >
                <h2 className="text-3xl font-bold text-white text-center mb-12">
                  🚀 Prochaines étapes
                </h2>
                <FeatureGrid />
              </motion.section>

              {/* Quick Links */}
              <motion.section 
                initial={{ opacity: 0, y: 40 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.6, delay: 1.0 }}
                className="mb-16"
              >
                <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                  <QuickLinkCard
                    icon="🔧"
                    title="Tester l'API"
                    description="Vérifier le fonctionnement de l'API backend"
                    link="/api/test"
                    external
                  />
                  <QuickLinkCard
                    icon="💾"
                    title="Health Check"
                    description="Statut des services et base de données"
                    link="/health"
                    external
                  />
                  <QuickLinkCard
                    icon="📋"
                    title="Info API"
                    description="Documentation des endpoints disponibles"
                    link="/api/info"
                    external
                  />
                </div>
              </motion.section>

              {/* Security Notice */}
              <motion.section 
                initial={{ opacity: 0, y: 40 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.6, delay: 1.2 }}
                className="text-center"
              >
                <div className="bg-gradient-to-r from-amber-500 to-orange-500 bg-opacity-10 border border-amber-400 border-opacity-20 rounded-2xl p-8 backdrop-blur-sm">
                  <div className="text-4xl mb-4">⚠️</div>
                  <h3 className="text-2xl font-bold text-amber-100 mb-4">
                    Usage Éthique et Éducatif Uniquement
                  </h3>
                  <p className="text-amber-100 max-w-2xl mx-auto leading-relaxed">
                    Cette application est destinée <strong>exclusivement</strong> à la formation en cybersécurité 
                    dans un cadre professionnel. L'utilisation malveillante est strictement interdite et peut être illégale.
                  </p>
                  <div className="mt-6 flex flex-wrap justify-center gap-4 text-sm text-amber-200">
                    <span className="bg-amber-500 bg-opacity-20 px-3 py-1 rounded-full">Formation interne</span>
                    <span className="bg-amber-500 bg-opacity-20 px-3 py-1 rounded-full">Accord de direction</span>
                    <span className="bg-amber-500 bg-opacity-20 px-3 py-1 rounded-full">Respect des lois</span>
                  </div>
                </div>
              </motion.section>
            </div>
          </main>
        </div>

        {/* Toast Notifications */}
        <ToastContainer
          position="top-right"
          autoClose={5000}
          hideProgressBar={false}
          newestOnTop
          closeOnClick
          rtl={false}
          pauseOnFocusLoss
          draggable
          pauseOnHover
          theme="dark"
          className="mt-16"
        />
      </div>
    </ErrorBoundary>
  );
}

// Composant QuickLinkCard
const QuickLinkCard = ({ icon, title, description, link, external = false }) => {
  const handleClick = () => {
    if (external) {
      window.open(link, '_blank', 'noopener,noreferrer');
    }
  };

  return (
    <motion.div
      whileHover={{ scale: 1.02, y: -2 }}
      whileTap={{ scale: 0.98 }}
      onClick={handleClick}
      className="bg-white bg-opacity-5 backdrop-blur-sm border border-white border-opacity-10 rounded-xl p-6 cursor-pointer transition-all duration-300 hover:bg-opacity-10 hover:border-opacity-20"
    >
      <div className="text-3xl mb-4">{icon}</div>
      <h3 className="text-lg font-semibold text-white mb-2">{title}</h3>
      <p className="text-blue-100 text-sm leading-relaxed">{description}</p>
      <div className="mt-4 flex items-center text-blue-300 text-sm">
        <span>Accéder</span>
        <svg className="ml-2 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
        </svg>
      </div>
    </motion.div>
  );
};

export default App;
EOF

    # Composant LoadingSpinner
    mkdir -p src/components
    cat > src/components/LoadingSpinner.js << 'EOF'
import React from 'react';
import { motion } from 'framer-motion';

const LoadingSpinner = () => {
  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900 flex items-center justify-center">
      <div className="text-center">
        <motion.div
          animate={{ rotate: 360 }}
          transition={{ duration: 1, repeat: Infinity, ease: "linear" }}
          className="w-16 h-16 border-4 border-blue-500 border-t-transparent rounded-full mx-auto mb-6"
        />
        <motion.h2 
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5 }}
          className="text-2xl font-semibold text-white mb-2"
        >
          Chargement du Cyber Prevention Tool
        </motion.h2>
        <motion.p 
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 0.5, delay: 0.2 }}
          className="text-blue-200"
        >
          Vérification des services...
        </motion.p>
      </div>
    </div>
  );
};

export default LoadingSpinner;
EOF

    # Composant StatusCard
    cat > src/components/StatusCard.js << 'EOF'
import React from 'react';
import { motion } from 'framer-motion';

const StatusCard = ({ status, data, error, onRetry }) => {
  const getStatusConfig = () => {
    switch(status) {
      case 'connected':
        return {
          icon: '✅',
          title: 'Backend connecté',
          color: 'green',
          bgColor: 'from-green-500 to-emerald-500'
        };
      case 'error':
        return {
          icon: '❌',
          title: 'Erreur de connexion',
          color: 'red',
          bgColor: 'from-red-500 to-rose-500'
        };
      default:
        return {
          icon: '🔄',
          title: 'Vérification...',
          color: 'yellow',
          bgColor: 'from-yellow-500 to-orange-500'
        };
    }
  };

  const statusConfig = getStatusConfig();

  return (
    <motion.div
      initial={{ opacity: 0, scale: 0.95 }}
      animate={{ opacity: 1, scale: 1 }}
      transition={{ duration: 0.5 }}
      className="bg-white bg-opacity-10 backdrop-blur-lg border border-white border-opacity-20 rounded-2xl p-8 shadow-2xl"
    >
      <div className="flex items-center justify-between mb-6">
        <div className="flex items-center">
          <div className={`bg-gradient-to-r ${statusConfig.bgColor} p-3 rounded-xl mr-4`}>
            <span className="text-2xl">{statusConfig.icon}</span>
          </div>
          <div>
            <h3 className="text-xl font-semibold text-white">{statusConfig.title}</h3>
            <p className="text-blue-100">État de l'API Backend</p>
          </div>
        </div>
        
        {status === 'error' && (
          <button
            onClick={onRetry}
            className="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg transition-colors duration-200"
          >
            Réessayer
          </button>
        )}
      </div>

      {status === 'connected' && data && (
        <div className="bg-black bg-opacity-20 rounded-xl p-4 space-y-2">
          <div className="flex justify-between text-sm">
            <span className="text-blue-200">Message:</span>
            <span className="text-white font-medium">{data.message}</span>
          </div>
          <div className="flex justify-between text-sm">
            <span className="text-blue-200">Environnement:</span>
            <span className="text-white font-medium">{data.environment}</span>
          </div>
          <div className="flex justify-between text-sm">
            <span className="text-blue-200">Timestamp:</span>
            <span className="text-white font-medium">{data.timestamp}</span>
          </div>
          {data.features && (
            <div className="mt-4">
              <p className="text-blue-200 text-sm mb-2">Fonctionnalités actives:</p>
              <div className="flex flex-wrap gap-2">
                {Object.entries(data.features).map(([key, value]) => (
                  <span 
                    key={key}
                    className="bg-green-500 bg-opacity-20 text-green-100 px-2 py-1 rounded text-xs"
                  >
                    {key}: {value}
                  </span>
                ))}
              </div>
            </div>
          )}
        </div>
      )}

      {status === 'error' && (
        <div className="bg-red-500 bg-opacity-20 border border-red-400 border-opacity-30 rounded-xl p-4">
          <h4 className="text-red-100 font-medium mb-2">Détails de l'erreur:</h4>
          <p className="text-red-200 text-sm">{error}</p>
          <div className="mt-4 space-y-2 text-sm text-red-100">
            <p><strong>Solutions possibles:</strong></p>
            <ul className="list-disc list-inside space-y-1 ml-4">
              <li>Vérifiez que le backend est démarré sur le port 3001</li>
              <li>Commande: <code className="bg-black bg-opacity-30 px-2 py-1 rounded">cd backend && npm run dev</code></li>
              <li>Vérifiez les logs du serveur pour plus de détails</li>
            </ul>
          </div>
        </div>
      )}
    </motion.div>
  );
};

export default StatusCard;
EOF

    # Composant FeatureGrid
    cat > src/components/FeatureGrid.js << 'EOF'
import React from 'react';
import { motion } from 'framer-motion';

const FeatureGrid = () => {
  const features = [
    {
      icon: '⚙️',
      title: 'Configurer SMTP',
      description: 'Éditez le fichier .env avec vos paramètres email pour envoyer les simulations',
      status: 'required',
      action: 'Éditer .env'
    },
    {
      icon: '🔐',
      title: 'Première connexion',
      description: 'Utilisez les comptes de test pour accéder à l\'interface d\'administration',
      status: 'ready',
      action: 'Se connecter'
    },
    {
      icon: '📧',
      title: 'Créer une campagne',
      description: 'Créez votre première simulation de phishing éducatif',
      status: 'next',
      action: 'Commencer'
    }
  ];

  const getStatusColor = (status) => {
    switch(status) {
      case 'required': return 'from-red-500 to-pink-500';
      case 'ready': return 'from-green-500 to-emerald-500';
      case 'next': return 'from-blue-500 to                <div style="text-align: center; margin: 30px 0;">
                  <a href="{TRACKING_URL}" style="background: #dc3545; color: white; padding: 15px 25px; text-decoration: none; border-radius: 4px; font-weight: bold; display: inline-block; text-transform: uppercase; letter-spacing: 1px;">
                    🔐 SÉCURISER MON COMPTE MAINTENANT
                  </a>
                </div>
                
                <div style="background: #495057; padding: 15px; border-radius: 4px; margin: 20px 0; border-left: 4px solid #fd7e14;">
                  <p style="margin: 0; color: #fd7e14; font-size: 13px;">
                    <strong>⚠️ ATTENTION :</strong> Si aucune action n'est prise dans les 15 minutes, votre compte sera automatiquement suspendu pour protéger les données de l'entreprise.
                  </p>
                </div>
                
                <div style="margin-top: 30px; padding-top: 20px; border-top: 1px solid #495057;">
                  <p style="color: #6c757d; font-size: 12px; font-family: Arial, sans-serif;">
                    Support Technique - Équipe Sécurité<br>
                    Ticket #ST-2024-{RANDOM_ID}<br>
                    support.urgent@votreentreprise.com
                  </p>
                </div>
              </div>
            </div>
          `,
          textContent: 'ALERTE SÉCURITÉ: Activité suspecte détectée sur votre compte. Action immédiate requise pour sécuriser votre accès.'
        }
      })
    ]);

    console.log('📧 Templates créés');

    // Créer une campagne d'exemple
    const campaign = await prisma.campaign.create({
      data: {
        name: 'Formation Sécurité Q1 2024',
        description: 'Campagne de sensibilisation trimestrielle pour tous les employés',
        templateId: templates[0].id,
        createdBy: admin.id,
        status: 'COMPLETED',
        targetCount: 5,
        emailsSent: 5,
        emailsOpened: 3,
        linksClicked: 2,
        trained: 2,
        launchedAt: new Date(Date.now() - 7 * 24 * 60 * 60 * 1000), // Il y a 7 jours
        completedAt: new Date(Date.now() - 2 * 24 * 60 * 60 * 1000)  // Il y a 2 jours
      }
    });

    // Créer des cibles d'exemple
    const targets = await Promise.all([
      prisma.target.create({
        data: {
          email: 'jean.dupont@exemple.fr',
          name: 'Jean Dupont',
          department: 'Ressources Humaines',
          position: 'Responsable RH',
          campaignId: campaign.id
        }
      }),
      prisma.target.create({
        data: {
          email: 'marie.martin@exemple.fr',
          name: 'Marie Martin',
          department: 'Finance',
          position: 'Comptable',
          campaignId: campaign.id
        }
      }),
      prisma.target.create({
        data: {
          email: 'pierre.bernard@exemple.fr',
          name: 'Pierre Bernard',
          department: 'IT',
          position: 'Développeur',
          campaignId: campaign.id
        }
      })
    ]);

    // Créer des résultats d'exemple
    const results = await Promise.all([
      prisma.result.create({
        data: {
          targetId: targets[0].id,
          campaignId: campaign.id,
          action: 'EMAIL_SENT',
          timestamp: new Date(Date.now() - 7 * 24 * 60 * 60 * 1000),
          ipAddress: '192.168.1.100'
        }
      }),
      prisma.result.create({
        data: {
          targetId: targets[0].id,
          campaignId: campaign.id,
          action: 'EMAIL_OPENED',
          timestamp: new Date(Date.now() - 6 * 24 * 60 * 60 * 1000),
          ipAddress: '192.168.1.100',
          userAgent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
      }),
      prisma.result.create({
        data: {
          targetId: targets[0].id,
          campaignId: campaign.id,
          action: 'LINK_CLICKED',
          timestamp: new Date(Date.now() - 6 * 24 * 60 * 60 * 1000),
          ipAddress: '192.168.1.100'
        }
      }),
      prisma.result.create({
        data: {
          targetId: targets[0].id,
          campaignId: campaign.id,
          action: 'TRAINED',
          timestamp: new Date(Date.now() - 6 * 24 * 60 * 60 * 1000),
          ipAddress: '192.168.1.100'
        }
      })
    ]);

    // Créer des paramètres système
    await Promise.all([
      prisma.setting.create({
        data: {
          key: 'app.name',
          value: 'Cyber Prevention Tool',
          type: 'string',
          category: 'general'
        }
      }),
      prisma.setting.create({
        data: {
          key: 'app.version',
          value: '2.0.0',
          type: 'string',
          category: 'general',
          editable: false
        }
      }),
      prisma.setting.create({
        data: {
          key: 'security.max_login_attempts',
          value: '5',
          type: 'number',
          category: 'security'
        }
      }),
      prisma.setting.create({
        data: {
          key: 'security.session_timeout',
          value: '3600',
          type: 'number',
          category: 'security'
        }
      }),
      prisma.setting.create({
        data: {
          key: 'email.smtp_enabled',
          value: 'true',
          type: 'boolean',
          category: 'email'
        }
      })
    ]);

    console.log('⚙️  Paramètres système créés');

    // Créer des notifications d'exemple
    await Promise.all([
      prisma.notification.create({
        data: {
          userId: admin.id,
          type: 'CAMPAIGN_COMPLETED',
          title: 'Campagne terminée',
          message: 'La campagne "Formation Sécurité Q1 2024" s\'est terminée avec succès.',
          data: { campaignId: campaign.id, clickRate: '40%' }
        }
      }),
      prisma.notification.create({
        data: {
          userId: manager.id,
          type: 'HIGH_CLICK_RATE',
          title: 'Taux de clic élevé détecté',
          message: 'Le département RH présente un taux de clic de 60% sur la dernière campagne.',
          data: { department: 'RH', clickRate: '60%' }
        }
      })
    ]);

    console.log('🔔 Notifications créées');

    console.log('\n✅ Seed terminé avec succès !');
    console.log('\n📊 Données créées :');
    console.log(`👤 Utilisateurs: ${await prisma.user.count()}`);
    console.log(`📧 Templates: ${await prisma.template.count()}`);
    console.log(`🎯 Campagnes: ${await prisma.campaign.count()}`);
    console.log(`👥 Cibles: ${await prisma.target.count()}`);
    console.log(`📈 Résultats: ${await prisma.result.count()}`);
    console.log(`⚙️  Paramètres: ${await prisma.setting.count()}`);
    console.log(`🔔 Notifications: ${await prisma.notification.count()}`);

    console.log('\n🔐 Comptes créés :');
    console.log('Admin: admin@cybertest.local / SecureAdmin2024!');
    console.log('Manager: manager@cybertest.local / SecureManager2024!');
    console.log('User: user@cybertest.local / SecureUser2024!');

  } catch (error) {
    console.error('❌ Erreur lors du seed:', error);
    throw error;
  }
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
EOF

    # Serveur principal sécurisé avec toutes les fonctionnalités
    cat > src/server.js << 'EOF'
const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const compression = require('compression');
const cookieParser = require('cookie-parser');
const rateLimit = require('express-rate-limit');
const session = require('express-session');
const RedisStore = require('connect-redis')(session);
const redis = require('redis');
const morgan = require('morgan');
const winston = require('winston');
const path = require('path');

require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3001;

// =============================================================================
// CONFIGURATION LOGGING
// =============================================================================

const logger = winston.createLogger({
  level: process.env.LOG_LEVEL || 'info',
  format: winston.format.combine(
    winston.format.timestamp(),
    winston.format.errors({ stack: true }),
    winston.format.json()
  ),
  defaultMeta: { service: 'cyber-prevention-backend' },
  transports: [
    new winston.transports.File({ 
      filename: path.join('logs', 'error.log'), 
      level: 'error',
      maxsize: 5242880, // 5MB
      maxFiles: 5
    }),
    new winston.transports.File({ 
      filename: path.join('logs', 'combined.log'),
      maxsize: 5242880,
      maxFiles: 5
    })
  ]
});

if (process.env.NODE_ENV !== 'production') {
  logger.add(new winston.transports.Console({
    format: winston.format.combine(
      winston.format.colorize(),
      winston.format.simple()
    )
  }));
}

// =============================================================================
// CONFIGURATION SÉCURITÉ
// =============================================================================

// Configuration Helmet avec CSP strict
app.use(helmet({
  contentSecurityPolicy: {
    directives: {
      defaultSrc: ["'self'"],
      styleSrc: ["'self'", "'unsafe-inline'", "https://fonts.googleapis.com"],
      scriptSrc: ["'self'"],
      fontSrc: ["'self'", "https://fonts.gstatic.com"],
      imgSrc: ["'self'", "data:", "https:"],
      connectSrc: ["'self'"],
      mediaSrc: ["'self'"],
      objectSrc: ["'none'"],
      childSrc: ["'self'"],
      frameAncestors: ["'none'"],
      baseUri: ["'self'"],
      formAction: ["'self'"]
    }
  },
  crossOriginEmbedderPolicy: true,
  crossOriginOpenerPolicy: true,
  crossOriginResourcePolicy: { policy: "cross-origin" },
  dnsPrefetchControl: true,
  frameguard: { action: 'deny' },
  hidePoweredBy: true,
  hsts: {
    maxAge: 31536000,
    includeSubDomains: true,
    preload: true
  },
  ieNoOpen: true,
  noSniff: true,
  originAgentCluster: true,
  permittedCrossDomainPolicies: false,
  referrerPolicy: { policy: "no-referrer" },
  xssFilter: true
}));

// Rate limiting strict avec différents niveaux
const createRateLimiter = (windowMs, max, message) => rateLimit({
  windowMs,
  max,
  message: { error: message },
  standardHeaders: true,
  legacyHeaders: false,
  handler: (req, res) => {
    logger.warn('Rate limit exceeded', {
      ip: req.ip,
      path: req.path,
      userAgent: req.get('User-Agent')
    });
    res.status(429).json({ error: message });
  }
});

// Rate limiters spécifiques
const globalLimiter = createRateLimiter(15 * 60 * 1000, 100, 'Trop de requêtes globales');
const authLimiter = createRateLimiter(15 * 60 * 1000, 5, 'Trop de tentatives de connexion');
const apiLimiter = createRateLimiter(15 * 60 * 1000, 50, 'Trop de requêtes API');

app.use(globalLimiter);

// Configuration Redis pour les sessions (si disponible)
let redisClient;
try {
  if (process.env.REDIS_URL) {
    redisClient = redis.createClient({ url: process.env.REDIS_URL });
    redisClient.on('error', (err) => {
      logger.error('Redis Client Error', err);
    });
  }
} catch (error) {
  logger.warn('Redis non disponible, utilisation de MemoryStore', error);
}

// Configuration des sessions
app.use(session({
  store: redisClient ? new RedisStore({ client: redisClient }) : undefined,
  secret: process.env.SESSION_SECRET || 'cyber-prevention-session-secret-change-in-production',
  resave: false,
  saveUninitialized: false,
  cookie: {
    secure: process.env.NODE_ENV === 'production',
    httpOnly: true,
    maxAge: parseInt(process.env.COOKIE_MAX_AGE) || 24 * 60 * 60 * 1000, // 24h
    sameSite: 'strict'
  },
  name: 'cyber.sid' // Nom de cookie personnalisé
}));

// =============================================================================
// MIDDLEWARE GÉNÉRAL
// =============================================================================

app.use(compression());

// CORS configuré de manière restrictive
app.use(cors({
  origin: function(origin, callback) {
    const allowedOrigins = [
      process.env.FRONTEND_URL || 'http://localhost:3000',
      'http://localhost:3000',
      'https://localhost:3000'
    ];
    
    // Permettre les requêtes sans origin (mobile apps, etc.)
    if (!origin) return callback(null, true);
    
    if (allowedOrigins.indexOf(origin) !== -1) {
      callback(null, true);
    } else {
      logger.warn('CORS rejection', { origin, userAgent: 'N/A' });
      callback(new Error('Non autorisé par CORS'));
    }
  },
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization', 'X-Requested-With'],
  exposedHeaders: ['X-Total-Count']
}));

// Parsers avec limites de sécurité
app.use(express.json({ 
  limit: process.env.MAX_FILE_UPLOAD_SIZE || '5mb',
  strict: true
}));
app.use(express.urlencoded({ 
  extended: true, 
  limit: process.env.MAX_FILE_UPLOAD_SIZE || '5mb',
  parameterLimit: 100
}));
app.use(cookieParser());

// Logging des requêtes avec Morgan
app.use(morgan('combined', {
  stream: { write: message => logger.info(message.trim()) },
  skip: (req) => req.path === '/health' // Ignorer les health checks
}));

// Middleware de sécurité personnalisé
app.use((req, res, next) => {
  // Ajouter des headers de sécurité supplémentaires
  res.setHeader('X-API-Version', '2.0');
  res.setHeader('X-Response-Time', Date.now());
  
  // Logs de sécurité pour certaines routes
  if (req.path.includes('/auth') || req.path.includes('/admin')) {
    logger.info('Security-sensitive route accessed', {
      path: req.path,
      method: req.method,
      ip: req.ip,
      userAgent: req.get('User-Agent'),
      timestamp: new Date().toISOString()
    });
  }
  
  next();
});

// =============================================================================
// ROUTES DE BASE
// =============================================================================

// Health check amélioré
app.get('/health', async (req, res) => {
  const healthInfo = {
    status: 'OK',
    timestamp: new Date().toISOString(),
    uptime: Math.floor(process.uptime()),
    memory: {
      used: Math.round(process.memoryUsage().heapUsed / 1024 / 1024) + ' MB',
      total: Math.round(process.memoryUsage().heapTotal / 1024 / 1024) + ' MB'
    },
    environment: process.env.NODE_ENV || 'development',
    version: '2.0.0'
  };

  // Vérification de la base de données
  try {
    const { PrismaClient } = require('@prisma/client');
    const prisma = new PrismaClient();
    await prisma.$queryRaw`SELECT 1`;
    healthInfo.database = 'OK';
    await prisma.$disconnect();
  } catch (error) {
    healthInfo.database = 'ERROR';
    healthInfo.status = 'DEGRADED';
    logger.error('Database health check failed', error);
  }

  // Vérification Redis
  if (redisClient) {
    try {
      await redisClient.ping();
      healthInfo.redis = 'OK';
    } catch (error) {
      healthInfo.redis = 'ERROR';
      logger.error('Redis health check failed', error);
    }
  }

  const statusCode = healthInfo.status === 'OK' ? 200 : 503;
  res.status(statusCode).json(healthInfo);
});

// Route de test API
app.get('/api/test', apiLimiter, (req, res) => {
  res.json({ 
    message: 'API Cyber Prevention Tool fonctionne correctement',
    timestamp: new Date().toISOString(),
    environment: process.env.NODE_ENV || 'development',
    features: {
      authentication: 'enabled',
      rateLimit: 'enabled',
      logging: 'enabled',
      monitoring: 'enabled'
    }
  });
});

// Route d'information sur l'API
app.get('/api/info', (req, res) => {
  res.json({
    name: 'Cyber Prevention Tool API',
    version: '2.0.0',
    description: 'API sécurisée pour simulation de phishing éducatif',
    endpoints: {
      auth: '/api/auth/*',
      campaigns: '/api/campaigns/*',
      templates: '/api/templates/*',
      statistics: '/api/statistics/*',
      tracking: '/api/tracking/*'
    },
    security: {
      rateLimit: 'Activé',
      authentication: 'JWT',
      cors: 'Restrictif',
      headers: 'Sécurisés'
    }
  });
});

// =============================================================================
// ROUTES D'API (à développer)
// =============================================================================

// Routes d'authentification avec rate limiting strict
app.use('/api/auth', authLimiter, (req, res, next) => {
  // Placeholder pour les routes d'auth
  res.json({ message: 'Routes d\'authentification en développement' });
});

// Routes des campagnes
app.use('/api/campaigns', apiLimiter, (req, res, next) => {
  // Placeholder pour les routes de campagnes
  res.json({ message: 'Routes des campagnes en développement' });
});

// Routes des templates
app.use('/api/templates', apiLimiter, (req, res, next) => {
  // Placeholder pour les routes de templates
  res.json({ message: 'Routes des templates en développement' });
});

// Routes des statistiques
app.use('/api/statistics', apiLimiter, (req, res, next) => {
  // Placeholder pour les routes de statistiques
  res.json({ message: 'Routes des statistiques en développement' });
});

// Routes de tracking
app.use('/api/tracking', (req, res, next) => {
  // Tracking sans rate limit strict pour permettre le suivi
  res.json({ message: 'Routes de tracking en développement' });
});

// =============================================================================
// MIDDLEWARE D'ERREUR ET 404
// =============================================================================

// Middleware d'erreur global
app.use((err, req, res, next) => {
  logger.error('Erreur serveur', {
    error: err.message,
    stack: err.stack,
    path: req.path,
    method: req.method,
    ip: req.ip,
    userAgent: req.get('User-Agent')
  });

  // Ne pas exposer les détails d'erreur en production
  const isDevelopment = process.env.NODE_ENV === 'development';
  
  res.status(err.status || 500).json({
    error: 'Erreur interne du serveur',
    message: isDevelopment ? err.message : 'Une erreur est survenue',
    ...(isDevelopment && { stack: err.stack })
  });
});

// Route 404
app.use('*', (req, res) => {
  logger.warn('Route non trouvée', {
    path: req.originalUrl,
    method: req.method,
    ip: req.ip,
    userAgent: req.get('User-Agent')
  });
  
  res.status(404).json({ 
    error: 'Route non trouvée',
    path: req.originalUrl,
    suggestion: 'Vérifiez l\'URL ou consultez /api/info pour les endpoints disponibles'
  });
});

// =============================================================================
// DÉMARRAGE DU SERVEUR
// =============================================================================

const server = app.listen(PORT, () => {
  logger.info(`🎯 Cyber Prevention Tool Backend démarré`, {
    port: PORT,
    environment: process.env.NODE_ENV || 'development',
    nodeVersion: process.version,
    timestamp: new Date().toISOString()
  });
  
  console.log(`🛡️  Cyber Prevention Tool Backend`);
  console.log(`🌐 Serveur: http://localhost:${PORT}`);
  console.log(`💾 Health: http://localhost:${PORT}/health`);
  console.log(`🔧 API Info: http://localhost:${PORT}/api/info`);
  console.log(`📊 Environment: ${process.env.NODE_ENV || 'development'}`);
});

// Gestion des arrêts propres
const gracefulShutdown = (signal) => {
  logger.info(`Signal ${signal} reçu, arrêt du serveur...`);
  
  server.close(() => {
    logger.info('Serveur HTTP fermé');
    
    // Fermer les connexions
    if (redisClient) {
      redisClient.quit(() => {
        logger.info('Connexion Redis fermée');
      });
    }
    
    process.exit(0);
  });
  
  // Force l'arrêt après 10 secondes
  setTimeout(() => {
    logger.error('Arrêt forcé après timeout');
    process.exit(1);
  }, 10000);
};

process.on('SIGTERM', () => gracefulShutdown('SIGTERM'));
process.on('SIGINT', () => gracefulShutdown('SIGINT'));

// Gestion des erreurs non capturées
process.on('uncaughtException', (error) => {
  logger.error('Exception non capturée', error);
  process.exit(1);
});

process.on('unhandledRejection', (reason, promise) => {
  logger.error('Promesse rejetée non gérée', { reason, promise });
  process.exit(1);
});

module.exports = app;
EOF

    # Fichiers de configuration additionnels
    mkdir -p src/{controllers,routes,services,middleware,models,utils}
    
    # Créer des fichiers gitkeep pour préserver la structure
    touch src/controllers/.gitkeep
    touch src/routes/.gitkeep
    touch src/services/.gitkeep
    touch src/middleware/.gitkeep
    touch src/models/.gitkeep
    touch src/utils/.gitkeep
    touch tests/.gitkeep

    cd .. # Retour à la racine
    INSTALL_STATUS[backend_files]=true
    log_success "Fichiers backend générés avec sécurité avancée"
    show_progress 6 10 "Backend"
}

generate_frontend_files() {
    if [[ "${INSTALL_STATUS[frontend_files]}" == "true" ]]; then
        log_info "Fichiers frontend déjà générés"
        show_progress 7 10 "Frontend"
        return 0
    fi
    
    log_step "Génération des fichiers frontend"
    
    cd frontend || return 1

    # package.json avec dépendances complètes et modernes
    cat > package.json << 'EOF'
{
  "name": "cyber-prevention-tool-frontend",
  "version": "2.0.0",
  "description": "Interface moderne pour outil de prévention cyber",
  "private": true,
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-router-dom": "^6.20.1",
    "react-scripts": "5.0.1",
    "axios": "^1.6.2",
    "recharts": "^2.8.0",
    "react-hook-form": "^7.48.2",
    "react-query": "^3.39.3",
    "@headlessui/react": "^1.7.17",
    "@heroicons/react": "^2.0.18",
    "tailwindcss": "^3.3.6",
    "autoprefixer": "^10.4.16",
    "postcss": "^8.4.32",
    "clsx": "^2.0.0",
    "date-fns": "^2.30.0",
    "react-toastify": "^9.1.3",
    "framer-motion": "^10.16.16",
    "react-table": "^7.8.0",
    "react-select": "^5.8.0",
    "react-datepicker": "^4.25.0",
    "react-dropzone": "^14.2.3",
    "js-cookie": "^3.0.5",
    "react-helmet-async": "^2.0.4",
    "react-error-boundary": "^4.0.11"
  },
  "devDependencies": {
    "@testing-library/jest-dom": "^6.1.5",
    "@testing-library/react": "^13.4.0",
    "@testing-library/user-event": "^14.5.1",
    "eslint-config-prettier": "^9.1.0",
    "eslint-plugin-security": "^1.7.1",
    "prettier": "^3.1.1"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "test:coverage": "react-scripts test --coverage --watchAll=false",
    "eject": "react-scripts eject",
    "lint": "eslint src/ --ext .js,.jsx",
    "lint:fix": "eslint src/ --ext .js,.jsx --fix",
    "format": "prettier --write src/",
    "analyze": "npm run build && npx webpack-bundle-analyzer build/static/js/*.js",
    "docker:build": "docker build -t cyber-prevention-frontend .",
    "docker:run": "docker run -p 3000:3000 cyber-prevention-frontend"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest",
      "prettier"
    ],
    "plugins": ["security"],
    "rules": {
      "security/detect-object-injection": "warn",
      "security/detect-non-literal-regexp": "warn"
    }
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

    # Dockerfile multi-stage optimisé
    cat > Dockerfile << 'EOF'
# Multi-stage build pour optimisation
FROM node:18-alpine AS base

# Installation des dépendances système
RUN apk add --no-cache dumb-init curl

WORKDIR /app

# Stage de développement
FROM base AS development
COPY package*.json ./
RUN npm ci --include=dev
COPY . .
EXPOSE 3000
CMD ["dumb-init", "npm", "start"]

# Stage de build
FROM base AS build
COPY package*.json ./
RUN npm ci --only=production --silent
COPY . .
RUN npm run build

# Stage de production avec Nginx
FROM nginx:alpine AS production

# Installation de curl pour healthcheck
RUN apk add --no-cache curl

# Copier la configuration Nginx personnalisée
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copier les fichiers buildés
COPY --from=build /app/build /usr/share/nginx/html

# Créer un utilisateur non-root
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001 && \
    chown -R nodejs:nodejs /usr/share/nginx/html && \
    chown -R nodejs:nodejs /var/cache/nginx && \
    chown -R nodejs:nodejs /var/log/nginx && \
    chown -R nodejs:nodejs /etc/nginx/conf.d

# Permissions pour les logs
RUN touch /var/run/nginx.pid && \
    chown -R nodejs:nodejs /var/run/nginx.pid

# Utiliser l'utilisateur non-root
USER nodejs

## OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Docker
.docker/
docker-compose.override.yml

# SSL certificates
ssl/
*.pem
*.key
*.crt
*.csr

# Temporary files
tmp/
temp/
*.tmp

# Test coverage
coverage/
.nyc_output/

# Cache
.cache/
.parcel-cache/

# Sensitive data
config/secrets/
backups/
uploads/
*.backup

# Editor directories and files
.vscode/
!.vscode/extensions.json
.idea
*.suo
*.ntvs*
*.njsproj
*.sln
*.sw?
EOF

    # docker-compose.yml production-ready
    cat > docker-compose.yml << 'EOF'
version: '3.8'

services:
  postgres:
    image: postgres:15-alpine
    container_name: cyber-prevention-db
    restart: unless-stopped
    environment:
      POSTGRES_DB: cyber_prevention_db
      POSTGRES_USER: cyber_user
      POSTGRES_PASSWORD: CyberSecure2024!
      POSTGRES_INITDB_ARGS: "--encoding=UTF-8 --lc-collate=C --lc-ctype=C"
    volumes:
      - postgres_data:/var/lib/postgresql/data
      - ./database/scripts:/docker-entrypoint-initdb.d
    ports:
      - "5432:5432"
    networks:
      - cyber-network
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U cyber_user -d cyber_prevention_db"]
      interval: 30s
      timeout: 10s
      retries: 5
      start_period: 60s

  redis:
    image: redis:7-alpine
    container_name: cyber-prevention-redis
    restart: unless-stopped
    ports:
      - "6379:6379"
    volumes:
      - redis_data:/data
    networks:
      - cyber-network
    healthcheck:
      test: ["CMD", "redis-cli", "ping"]
      interval: 30s
      timeout: 10s
      retries: 3

  backend:
    build: 
      context: ./backend
      dockerfile: Dockerfile
      target: production
    container_name: cyber-prevention-backend
    restart: unless-stopped
    ports:
      - "3001:3001"
    environment:
      NODE_ENV: production
      DATABASE_URL: postgresql://cyber_user:CyberSecure2024!@postgres:5432/cyber_prevention_db
      REDIS_URL: redis://redis:6379
    depends_on:
      postgres:
        condition: service_healthy
      redis:
        condition: service_healthy
    networks:
      - cyber-network
    volumes:
      - ./logs:/app/logs
      - ./uploads:/app/uploads
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:3001/health"]
      interval: 30s
      timeout: 10s
      retries: 3
      start_period: 40s

  frontend:
    build:
      context: ./frontend
      dockerfile: Dockerfile
      target: production
    container_name: cyber-prevention-frontend
    restart: unless-stopped
    ports:
      - "3000:3000"
    environment:
      REACT_APP_API_URL: http://localhost:3001
      REACT_APP_APP_NAME: "Cyber Prevention Tool"
      REACT_APP_VERSION: "2.0"
    depends_on:
      backend:
        condition: service_healthy
    networks:
      - cyber-network
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:3000"]
      interval: 30s
      timeout: 10s
      retries: 3

  nginx:
    image: nginx:alpine
    container_name: cyber-prevention-proxy
    restart: unless-stopped
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - ./nginx/conf.d:/etc/nginx/conf.d
      - ./nginx/ssl:/etc/nginx/ssl
      - ./nginx/logs:/var/log/nginx
    depends_on:
      - frontend
      - backend
    networks:
      - cyber-network

volumes:
  postgres_data:
    driver: local
  redis_data:
    driver: local

networks:
  cyber-network:
    driver: bridge
    ipam:
      config:
        - subnet: 172.20.0.0/16
EOF

    # docker-compose.dev.yml pour développement
    cat > docker-compose.dev.yml << 'EOF'
version: '3.8'

services:
  postgres:
    image: postgres:15-alpine
    container_name: cyber-prevention-db-dev
    environment:
      POSTGRES_DB: cyber_prevention_dev
      POSTGRES_USER: cyber_user
      POSTGRES_PASSWORD: dev_password
    volumes:
      - postgres_dev_data:/var/lib/postgresql/data
    ports:
      - "5432:5432"
    networks:
      - cyber-dev-network

  redis:
    image: redis:7-alpine
    container_name: cyber-prevention-redis-dev
    ports:
      - "6379:6379"
    networks:
      - cyber-dev-network

volumes:
  postgres_dev_data:

networks:
  cyber-dev-network:
    driver: bridge
EOF

    log_success "Fichiers de configuration générés"
}

generate_backend_files() {
    if [[ "${INSTALL_STATUS[backend_files]}" == "true" ]]; then
        log_info "Fichiers backend déjà générés"
        show_progress 6 10 "Backend"
        return 0
    fi
    
    log_step "Génération des fichiers backend"
    
    cd backend || return 1

    # package.json avec dépendances complètes et sécurisées
    cat > package.json << 'EOF'
{
  "name": "cyber-prevention-tool-backend",
  "version": "2.0.0",
  "description": "Backend sécurisé pour outil de prévention cyber",
  "main": "src/server.js",
  "scripts": {
    "start": "node src/server.js",
    "dev": "nodemon src/server.js",
    "test": "jest --coverage",
    "test:watch": "jest --watch",
    "test:e2e": "jest --config jest.e2e.config.js",
    "migrate": "prisma migrate dev",
    "migrate:prod": "prisma migrate deploy",
    "generate": "prisma generate",
    "studio": "prisma studio",
    "seed": "node prisma/seed.js",
    "lint": "eslint src/ --ext .js",
    "lint:fix": "eslint src/ --ext .js --fix",
    "security:audit": "npm audit",
    "security:check": "npm audit --audit-level moderate",
    "docker:build": "docker build -t cyber-prevention-backend .",
    "docker:run": "docker run -p 3001:3001 cyber-prevention-backend"
  },
  "dependencies": {
    "express": "^4.18.2",
    "cors": "^2.8.5",
    "helmet": "^7.1.0",
    "express-rate-limit": "^7.1.5",
    "express-validator": "^7.0.1",
    "express-session": "^1.17.3",
    "connect-redis": "^7.1.0",
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2",
    "nodemailer": "^6.9.7",
    "prisma": "^5.7.1",
    "@prisma/client": "^5.7.1",
    "uuid": "^9.0.1",
    "dotenv": "^16.3.1",
    "winston": "^3.11.0",
    "winston-daily-rotate-file": "^4.7.1",
    "compression": "^1.7.4",
    "cookie-parser": "^1.4.6",
    "multer": "^1.4.5-lts.1",
    "joi": "^17.11.0",
    "moment": "^2.29.4",
    "lodash": "^4.17.21",
    "redis": "^4.6.10",
    "bull": "^4.12.2",
    "csurf": "^1.11.0",
    "express-mongo-sanitize": "^2.2.0",
    "xss": "^1.0.14",
    "morgan": "^1.10.0"
  },
  "devDependencies": {
    "nodemon": "^3.0.2",
    "jest": "^29.7.0",
    "supertest": "^6.3.3",
    "eslint": "^8.55.0",
    "eslint-config-prettier": "^9.1.0",
    "eslint-plugin-security": "^1.7.1",
    "prettier": "^3.1.1",
    "@types/jest": "^29.5.8"
  },
  "engines": {
    "node": ">=18.0.0",
    "npm": ">=8.0.0"
  },
  "keywords": [
    "cybersecurity",
    "phishing",
    "education",
    "prevention",
    "security-training"
  ],
  "author": "Cyber Prevention Team",
  "license": "PROPRIETARY"
}
EOF

    # Dockerfile multi-stage optimisé
    cat > Dockerfile << 'EOF'
# Multi-stage build pour optimisation
FROM node:18-alpine AS base

# Installation des dépendances système
RUN apk add --no-cache \
    dumb-init \
    curl \
    postgresql-client

WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./
COPY prisma ./prisma/

# Stage de développement
FROM base AS development
RUN npm ci --include=dev
COPY . .
RUN npx prisma generate
EXPOSE 3001
CMD ["dumb-init", "npm", "run", "dev"]

# Stage de production
FROM base AS production

# Créer un utilisateur non-root
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001

# Installer uniquement les dépendances de production
RUN npm ci --only=production && npm cache clean --force

# Copier le code source
COPY --chown=nodejs:nodejs . .

# Générer Prisma client
RUN npx prisma generate

# Créer les dossiers nécessaires
RUN mkdir -p logs uploads && \
    chown -R nodejs:nodejs /app

# Passer à l'utilisateur non-root
USER nodejs

# Variables d'environnement
ENV NODE_ENV=production
ENV PORT=3001

# Exposer le port
EXPOSE 3001

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:3001/health || exit 1

# Démarrage avec dumb-init pour gestion des signaux
CMD ["dumb-init", "node", "src/server.js"]
EOF

    # Schema Prisma avec relations complètes
    cat > prisma/schema.prisma << 'EOF'
generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

model User {
  id          String    @id @default(cuid())
  email       String    @unique
  password    String
  name        String
  role        Role      @default(USER)
  active      Boolean   @default(true)
  verified    Boolean   @default(false)
  lastLogin   DateTime?
  loginCount  Int       @default(0)
  failedLogins Int       @default(0)
  lockedUntil DateTime?
  resetToken  String?
  resetExpires DateTime?
  verifyToken String?
  createdAt   DateTime  @default(now())
  updatedAt   DateTime  @updatedAt

  // Relations
  campaigns     Campaign[]
  targets       Target[]
  auditLogs     AuditLog[]
  notifications Notification[]
  sessions      Session[]
  
  @@map("users")
}

model Session {
  id        String   @id @default(cuid())
  sessionId String   @unique
  userId    String
  data      Json
  expiresAt DateTime
  createdAt DateTime @default(now())
  
  user User @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  @@map("sessions")
}

model Campaign {
  id           String         @id @default(cuid())
  name         String
  description  String?
  templateId   String
  createdBy    String
  status       CampaignStatus @default(DRAFT)
  targetCount  Int            @default(0)
  emailsSent   Int            @default(0)
  emailsOpened Int            @default(0)
  linksClicked Int            @default(0)
  dataSubmitted Int           @default(0)
  reported     Int            @default(0)
  trained      Int            @default(0)
  scheduledAt  DateTime?
  createdAt    DateTime       @default(now())
  launchedAt   DateTime?
  completedAt  DateTime?
  updatedAt    DateTime       @updatedAt

  // Relations
  creator  User       @relation(fields: [createdBy], references: [id])
  template Template   @relation(fields: [templateId], references: [id])
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
  language    String     @default("fr")
  tags        String[]   @default([])
  metadata    Json?
  createdAt   DateTime   @default(now())
  updatedAt   DateTime   @updatedAt
  
  // Relations
  campaigns Campaign[]
  
  @@map("templates")
}

model Target {
  id         String  @id @default(cuid())
  email      String
  name       String?
  department String?
  position   String?
  phone      String?
  campaignId String
  userId     String?
  metadata   Json?
  
  // Relations
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
  location      String?
  trackingToken String?
  metadata      Json?
  
  // Relations
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
  metadata   Json?
  createdAt  DateTime @default(now())
  usedAt     DateTime?
  expiresAt  DateTime
  
  @@map("tracking_tokens")
}

model AuditLog {
  id         String   @id @default(cuid())
  userId     String?
  action     String
  resource   String?
  resourceId String?
  oldValues  Json?
  newValues  Json?
  ipAddress  String?
  userAgent  String?
  success    Boolean  @default(true)
  error      String?
  timestamp  DateTime @default(now())
  
  // Relations
  user User? @relation(fields: [userId], references: [id])
  
  @@map("audit_logs")
}

model Notification {
  id        String           @id @default(cuid())
  userId    String
  type      NotificationType
  title     String
  message   String
  read      Boolean          @default(false)
  data      Json?
  createdAt DateTime         @default(now())
  readAt    DateTime?
  
  // Relations
  user User @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  @@map("notifications")
}

model Setting {
  id        String   @id @default(cuid())
  key       String   @unique
  value     String
  type      String   @default("string")
  category  String   @default("general")
  editable  Boolean  @default(true)
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
  
  @@map("settings")
}

// Enums
enum Role {
  SUPER_ADMIN
  ADMIN
  MANAGER
  USER
  VIEWER
}

enum CampaignStatus {
  DRAFT
  SCHEDULED
  ACTIVE
  PAUSED
  COMPLETED
  CANCELLED
  FAILED
}

enum Difficulty {
  VERY_EASY
  EASY
  MEDIUM
  HARD
  EXPERT
}

enum ActionType {
  EMAIL_SENT
  EMAIL_BOUNCED
  EMAIL_OPENED
  LINK_CLICKED
  DATA_SUBMITTED
  FILE_DOWNLOADED
  ATTACHMENT_OPENED
  TRAINED
  REPORTED
  FORWARD_EMAIL
  REPLY_EMAIL
}

enum NotificationType {
  CAMPAIGN_COMPLETED
  HIGH_CLICK_RATE
  SECURITY_ALERT
  SYSTEM_UPDATE
  USER_TRAINED
  REPORT_READY
}
EOF

    # Seed avec données réalistes et sécurisées
    cat > prisma/seed.js << 'EOF'
const { PrismaClient } = require('@prisma/client');
const bcrypt = require('bcryptjs');
const { v4: uuidv4 } = require('uuid');

const prisma = new PrismaClient();

async function main() {
  console.log('🌱 Démarrage du seed des données...');

  try {
    // Supprimer les données existantes
    await prisma.result.deleteMany();
    await prisma.trackingToken.deleteMany();
    await prisma.target.deleteMany();
    await prisma.campaign.deleteMany();
    await prisma.template.deleteMany();
    await prisma.notification.deleteMany();
    await prisma.auditLog.deleteMany();
    await prisma.session.deleteMany();
    await prisma.user.deleteMany();
    await prisma.setting.deleteMany();

    console.log('🗑️  Données existantes supprimées');

    // Créer les utilisateurs avec mots de passe sécurisés
    const adminPassword = await bcrypt.hash('SecureAdmin2024!', 12);
    const userPassword = await bcrypt.hash('SecureUser2024!', 12);
    const managerPassword = await bcrypt.hash('SecureManager2024!', 12);

    const admin = await prisma.user.create({
      data: {
        email: 'admin@cybertest.local',
        password: adminPassword,
        name: 'Administrateur Cyber',
        role: 'ADMIN',
        verified: true,
        active: true
      }
    });

    const manager = await prisma.user.create({
      data: {
        email: 'manager@cybertest.local',
        password: managerPassword,
        name: 'Manager Sécurité',
        role: 'MANAGER',
        verified: true,
        active: true
      }
    });

    const user = await prisma.user.create({
      data: {
        email: 'user@cybertest.local',
        password: userPassword,
        name: 'Utilisateur Test',
        role: 'USER',
        verified: true,
        active: true
      }
    });

    console.log('👤 Utilisateurs créés');

    // Créer des templates variés et réalistes
    const templates = await Promise.all([
      prisma.template.create({
        data: {
          name: 'Mise à jour sécurité urgente',
          subject: '🔒 Action requise - Mise à jour sécurité obligatoire',
          category: 'security',
          difficulty: 'EASY',
          language: 'fr',
          tags: ['sécurité', 'urgent', 'mise-à-jour'],
          htmlContent: `
            <div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">
              <div style="background: #f8f9fa; padding: 20px; border-radius: 8px;">
                <h2 style="color: #1a73e8; margin: 0 0 20px 0;">🔒 Mise à Jour Sécurité Urgente</h2>
                
                <p>Bonjour <strong>{TARGET_NAME}</strong>,</p>
                
                <div style="background: #fff3cd; border: 1px solid #ffeaa7; border-radius: 4px; padding: 15px; margin: 20px 0;">
                  <p style="margin: 0; color: #856404;"><strong>⚠️ Action requise dans les 24h</strong></p>
                </div>
                
                <p>Une faille de sécurité critique a été détectée dans nos systèmes. Vous devez immédiatement mettre à jour vos informations de connexion pour protéger votre compte.</p>
                
                <p><strong>Étapes à suivre :</strong></p>
                <ol>
                  <li>Cliquez sur le lien de mise à jour ci-dessous</li>
                  <li>Confirmez votre identité</li>
                  <li>Mettez à jour votre mot de passe</li>
                </ol>
                
                <div style="text-align: center; margin: 30px 0;">
                  <a href="{TRACKING_URL}" style="background: #1a73e8; color: white; padding: 15px 30px; text-decoration: none; border-radius: 6px; font-weight: bold; display: inline-block;">
                    🔐 Mettre à Jour Maintenant
                  </a>
                </div>
                
                <div style="background: #f8d7da; border: 1px solid #f5c6cb; border-radius: 4px; padding: 15px; margin: 20px 0;">
                  <p style="margin: 0; color: #721c24; font-size: 14px;">
                    <strong>Important :</strong> Si vous ne procédez pas à cette mise à jour dans les 24h, votre compte sera temporairement suspendu pour des raisons de sécurité.
                  </p>
                </div>
                
                <p style="color: #666; font-size: 12px; margin-top: 30px;">
                  Équipe Sécurité IT<br>
                  En cas de question : security@votreentreprise.com
                </p>
              </div>
            </div>
          `,
          textContent: 'Mise à jour sécurité urgente requise. Cliquez sur le lien pour procéder à la mise à jour de votre compte.'
        }
      }),

      prisma.template.create({
        data: {
          name: 'Notification RH - Bonus annuel',
          subject: '💰 Votre bonus annuel est disponible - Action requise',
          category: 'hr',
          difficulty: 'MEDIUM',
          language: 'fr',
          tags: ['rh', 'bonus', 'finance'],
          htmlContent: `
            <div style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; max-width: 650px; margin: 0 auto; background: #ffffff;">
              <div style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); padding: 30px; text-align: center;">
                <h1 style="color: white; margin: 0; font-size: 28px;">💰 Félicitations !</h1>
                <p style="color: #f0f8ff; margin: 10px 0 0 0; font-size: 16px;">Votre bonus annuel vous attend</p>
              </div>
              
              <div style="padding: 30px;">
                <p style="font-size: 16px; line-height: 1.6;">Bonjour <strong>{TARGET_NAME}</strong>,</p>
                
                <p style="font-size: 16px; line-height: 1.6;">Nous avons le plaisir de vous informer que votre bonus annuel de performance a été approuvé !</p>
                
                <div style="background: #e8f5e8; border-left: 4px solid #28a745; padding: 20px; margin: 25px 0;">
                  <h3 style="margin: 0 0 10px 0; color: #155724;">📊 Résumé de votre bonus :</h3>
                  <ul style="margin: 0; padding-left: 20px; color: #155724;">
                    <li>Montant estimé : <strong>€2,400</strong></li>
                    <li>Performance : <strong>Excellente (A+)</strong></li>
                    <li>Période : Janvier - Décembre 2024</li>
                  </ul>
                </div>
                
                <p style="font-size: 16px; line-height: 1.6;">Pour recevoir votre bonus, veuillez confirmer vos informations bancaires en cliquant sur le lien ci-dessous :</p>
                
                <div style="text-align: center; margin: 30px 0;">
                  <a href="{TRACKING_URL}" style="background: #28a745; color: white; padding: 15px 25px; text-decoration: none; border-radius: 6px; font-weight: bold; display: inline-block; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
                    ✅ Confirmer & Recevoir mon Bonus
                  </a>
                </div>
                
                <div style="background: #fff3cd; border: 1px solid #ffeaa7; border-radius: 4px; padding: 15px; margin: 25px 0;">
                  <p style="margin: 0; color: #856404; font-size: 14px;">
                    ⏰ <strong>Date limite :</strong> Vous avez jusqu'au 31 décembre pour confirmer vos informations, sinon le bonus sera reporté à l'année suivante.
                  </p>
                </div>
                
                <p style="color: #666; font-size: 14px; margin-top: 40px; border-top: 1px solid #eee; padding-top: 20px;">
                  Service Ressources Humaines<br>
                  rh@votreentreprise.com | +33 1 23 45 67 89
                </p>
              </div>
            </div>
          `,
          textContent: 'Votre bonus annuel est disponible. Confirmez vos informations pour le recevoir.'
        }
      }),

      prisma.template.create({
        data: {
          name: 'Support IT - Problème réseau',
          subject: '🔧 Intervention urgente requise - Problème réseau détecté',
          category: 'it-support',
          difficulty: 'HARD',
          language: 'fr',
          tags: ['support', 'réseau', 'technique'],
          htmlContent: `
            <div style="font-family: 'Courier New', monospace; max-width: 700px; margin: 0 auto; background: #1e1e1e; color: #ffffff; border-radius: 8px;">
              <div style="background: #dc3545; padding: 20px; border-radius: 8px 8px 0 0;">
                <h2 style="margin: 0; color: white;">⚠️ ALERTE SYSTÈME CRITIQUE</h2>
                <p style="margin: 5px 0 0 0; color: #ffcccc;">Intervention technique immédiate requise</p>
              </div>
              
              <div style="padding: 25px; background: #2d2d2d;">
                <div style="background: #333; padding: 15px; border-radius: 4px; margin-bottom: 20px; border-left: 4px solid #ffc107;">
                  <p style="margin: 0; font-family: 'Courier New', monospace; color: #ffc107;">
                    [SYSTÈME] Anomalie détectée sur: {TARGET_EMAIL}<br>
                    [TIMESTAMP] $(date '+%Y-%m-%d %H:%M:%S')<br>
                    [PRIORITÉ] CRITIQUE - Action immédiate requise
                  </p>
                </div>
                
                <p style="color: #ffffff;">Bonjour <strong style="color: #28a745;">{TARGET_NAME}</strong>,</p>
                
                <p style="color: #ffffff;">Notre système de monitoring a détecté une activité suspecte sur votre connexion réseau. Des tentatives d'accès non autorisées ont été identifiées.</p>
                
                <div style="background: #dc3545; padding: 15px; border-radius: 4px; margin: 20px 0;">
                  <h4 style="margin: 0 0 10px 0; color: white;">🚨 DÉTAILS DE L'INCIDENT :</h4>
                  <ul style="margin: 0; color: #ffcccc; font-family: 'Courier New', monospace; font-size: 14px;">
                    <li>IP source: 185.243.112.47 (Russia)</li>
                    <li>Type: Brute force attack</li>
                    <li>Cible: Session utilisateur {TARGET_NAME}</li>
                    <li>Status: ACTIF - Blocage partiel en cours</li>
                  </ul>
                </div>
                
                <p style="color: #ffffff;"><strong>Action requise immédiatement :</strong></p>
                <ol style="color: #ffffff;">
                  <li>Cliquez sur le lien de sécurisation ci-dessous</li>
                  <li>Validez votre identité avec vos identifiants actuels</li>
                  <li>Activez l'authentification à deux facteurs</li>
                  <li>Changez votre mot de passe</li>
                </ol>
                
                <div style="text-align: center#!/bin/bash

# =============================================================================
# CYBER PREVENTION TOOL - INSTALLATION SÉCURISÉE COMPLÈTE
# =============================================================================
# Installation automatique avec vérifications complètes et gestion d'erreurs
# Projet: Simulateur de phishing éducatif pour formation cybersécurité
# Version: 2.0 - Production Ready
# =============================================================================

set -euo pipefail  # Mode strict : arrêt sur erreur, variables non définies, échec de pipe

# Variables globales
readonly PROJECT_NAME="cyber-prevention-tool"
readonly SCRIPT_VERSION="2.0"
readonly MIN_NODE_VERSION="18"
readonly MIN_POSTGRES_VERSION="14"
readonly REQUIRED_PORTS=(3000 3001 5432)
readonly INSTALL_DIR="$(pwd)/$PROJECT_NAME"

# Fichiers de log
readonly LOG_DIR="/tmp/cyber-prevention-install"
readonly LOG_FILE="$LOG_DIR/install.log"
readonly ERROR_LOG="$LOG_DIR/error.log"

# Couleurs et formatage
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly PURPLE='\033[0;35m'
readonly CYAN='\033[0;36m'
readonly WHITE='\033[1;37m'
readonly BOLD='\033[1m'
readonly NC='\033[0m'

# États d'installation
declare -A INSTALL_STATUS
INSTALL_STATUS[system_deps]=false
INSTALL_STATUS[nodejs]=false
INSTALL_STATUS[postgresql]=false
INSTALL_STATUS[docker]=false
INSTALL_STATUS[project_structure]=false
INSTALL_STATUS[backend_files]=false
INSTALL_STATUS[frontend_files]=false
INSTALL_STATUS[dependencies]=false
INSTALL_STATUS[database]=false

# =============================================================================
# FONCTIONS D'AFFICHAGE ET LOGGING
# =============================================================================

setup_logging() {
    mkdir -p "$LOG_DIR"
    exec 1> >(tee -a "$LOG_FILE")
    exec 2> >(tee -a "$ERROR_LOG" >&2)
}

print_header() {
    clear
    echo -e "${PURPLE}${BOLD}"
    cat << 'EOF'
   ____      _               ____                           _   _             
  / ___|   _| |__   ___ _ __|  _ \ _ __ _____   _____ _ __ | |_(_) ___  _ __   
 | |  | | | | '_ \ / _ \ '__| |_) | '__/ _ \ \ / / _ \ '_ \| __| |/ _ \| '_ \  
 | |__| |_| | |_) |  __/ |  |  __/| | |  __/\ V /  __/ | | | |_| | (_) | | | |
  \____\__, |_.__/ \___|_|  |_|   |_|  \___| \_/ \___|_| |_|\__|_|\___/|_| |_|
       |___/                                                                 
                           TOOL - INSTALLATION SÉCURISÉE
EOF
    echo -e "${NC}${WHITE}        Formation Cybersécurité - Simulateur de Phishing Éducatif${NC}"
    echo -e "${YELLOW}============================================================================${NC}"
    echo -e "${CYAN}Version: $SCRIPT_VERSION | Démarré: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
    echo ""
}

log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [INFO] $1" >> "$LOG_FILE"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [SUCCESS] $1" >> "$LOG_FILE"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [WARNING] $1" >> "$LOG_FILE"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1" >&2
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [ERROR] $1" >> "$ERROR_LOG"
}

log_step() {
    echo ""
    echo -e "${CYAN}${BOLD}[ÉTAPE]${NC} $1"
    echo -e "${YELLOW}──────────────────────────────────────────────────────────────${NC}"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [STEP] $1" >> "$LOG_FILE"
}

show_progress() {
    local current=$1
    local total=$2
    local description="$3"
    
    local percentage=$((current * 100 / total))
    local completed=$((current * 50 / total))
    local remaining=$((50 - completed))
    
    printf "\r${WHITE}${BOLD}["
    printf "%${completed}s" | tr ' ' '='
    printf "%${remaining}s" | tr ' ' '-'
    printf "] ${percentage}%% - ${description}${NC}"
    
    if [ $current -eq $total ]; then
        echo ""
    fi
}

# =============================================================================
# FONCTIONS DE VÉRIFICATION ET SÉCURITÉ
# =============================================================================

check_os_compatibility() {
    log_step "Vérification de la compatibilité système"
    
    case "$OSTYPE" in
        linux-gnu*)
            if command -v apt-get >/dev/null 2>&1; then
                OS="ubuntu"
                PACKAGE_MANAGER="apt-get"
            elif command -v yum >/dev/null 2>&1; then
                OS="centos"
                PACKAGE_MANAGER="yum"
            elif command -v dnf >/dev/null 2>&1; then
                OS="fedora"
                PACKAGE_MANAGER="dnf"
            else
                log_error "Distribution Linux non supportée"
                exit 1
            fi
            ;;
        darwin*)
            OS="macos"
            PACKAGE_MANAGER="brew"
            ;;
        msys|cygwin)
            log_error "Windows n'est pas supporté directement"
            log_info "Utilisez WSL (Windows Subsystem for Linux) pour installer ce projet"
            exit 1
            ;;
        *)
            log_error "Système d'exploitation non supporté: $OSTYPE"
            exit 1
            ;;
    esac
    
    log_success "Système détecté: $OS avec $PACKAGE_MANAGER"
}

check_permissions() {
    log_step "Vérification des permissions"
    
    # Ne pas exécuter en tant que root
    if [[ $EUID -eq 0 ]]; then
        log_error "Ne pas exécuter ce script en tant que root !"
        log_info "Utilisez: ./install_cyber_prevention_tool.sh"
        exit 1
    fi
    
    # Vérifier sudo
    if ! sudo -n true 2>/dev/null; then
        log_info "Ce script nécessite des privilèges sudo. Authentification requise..."
        if ! sudo -v; then
            log_error "Impossible d'obtenir les privilèges sudo"
            exit 1
        fi
    fi
    
    # Vérifier les permissions d'écriture
    if [[ ! -w "$(pwd)" ]]; then
        log_error "Pas de permission d'écriture dans le répertoire courant"
        exit 1
    fi
    
    log_success "Permissions validées"
}

check_available_ports() {
    log_step "Vérification de la disponibilité des ports"
    
    local ports_in_use=()
    local processes_to_kill=()
    
    for port in "${REQUIRED_PORTS[@]}"; do
        if lsof -Pi :$port -sTCP:LISTEN -t >/dev/null 2>&1; then
            local pid=$(lsof -Pi :$port -sTCP:LISTEN -t)
            local process_name=$(ps -p $pid -o comm= 2>/dev/null || echo "inconnu")
            ports_in_use+=("$port (PID: $pid, Processus: $process_name)")
            processes_to_kill+=("$pid")
        fi
    done
    
    if [[ ${#ports_in_use[@]} -gt 0 ]]; then
        log_warning "Ports occupés détectés:"
        for port_info in "${ports_in_use[@]}"; do
            echo "  - Port $port_info"
        done
        
        echo ""
        read -p "Voulez-vous tuer ces processus automatiquement ? [y/N]: " -n 1 -r
        echo ""
        
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            log_info "Arrêt des processus en cours..."
            for pid in "${processes_to_kill[@]}"; do
                if kill -9 "$pid" 2>/dev/null; then
                    log_success "Processus $pid arrêté"
                else
                    log_warning "Impossible d'arrêter le processus $pid"
                fi
            done
            sleep 2
        else
            log_error "Installation annulée. Libérez les ports manuellement et relancez."
            exit 1
        fi
    fi
    
    log_success "Tous les ports requis sont disponibles"
}

check_disk_space() {
    log_step "Vérification de l'espace disque"
    
    local required_space_gb=2
    local available_space_gb=$(df . | awk 'NR==2{printf "%.1f", $4/1024/1024}')
    
    if (( $(echo "$available_space_gb < $required_space_gb" | bc -l) )); then
        log_error "Espace disque insuffisant. Requis: ${required_space_gb}GB, Disponible: ${available_space_gb}GB"
        exit 1
    fi
    
    log_success "Espace disque suffisant: ${available_space_gb}GB disponible"
}

check_internet_connection() {
    log_step "Vérification de la connexion Internet"
    
    local test_urls=("google.com" "github.com" "npmjs.com")
    local connection_ok=false
    
    for url in "${test_urls[@]}"; do
        if ping -c 1 -W 5 "$url" >/dev/null 2>&1; then
            connection_ok=true
            break
        fi
    done
    
    if [[ "$connection_ok" != true ]]; then
        log_error "Aucune connexion Internet détectée"
        log_info "Une connexion Internet est requise pour télécharger les dépendances"
        exit 1
    fi
    
    log_success "Connexion Internet OK"
}

check_existing_installation() {
    log_step "Vérification d'une installation existante"
    
    if [[ -d "$INSTALL_DIR" ]]; then
        log_warning "Une installation existe déjà dans: $INSTALL_DIR"
        echo ""
        echo "Options disponibles:"
        echo "1) Supprimer et réinstaller complètement"
        echo "2) Continuer l'installation existante"
        echo "3) Annuler"
        echo ""
        
        while true; do
            read -p "Votre choix [1-3]: " choice
            case $choice in
                1)
                    log_info "Suppression de l'installation existante..."
                    rm -rf "$INSTALL_DIR"
                    log_success "Installation existante supprimée"
                    break
                    ;;
                2)
                    log_info "Continuation de l'installation existante"
                    break
                    ;;
                3)
                    log_info "Installation annulée par l'utilisateur"
                    exit 0
                    ;;
                *)
                    echo "Choix invalide. Utilisez 1, 2 ou 3."
                    ;;
            esac
        done
    fi
}

verify_dependencies() {
    log_step "Vérification des dépendances installées"
    
    local missing_deps=()
    
    # Vérifier Node.js
    if ! command -v node >/dev/null 2>&1; then
        missing_deps+=("Node.js")
    else
        local node_version=$(node --version | sed 's/v//')
        local node_major=$(echo "$node_version" | cut -d. -f1)
        if [[ $node_major -lt $MIN_NODE_VERSION ]]; then
            missing_deps+=("Node.js (version $node_version < $MIN_NODE_VERSION)")
        fi
    fi
    
    # Vérifier npm
    if ! command -v npm >/dev/null 2>&1; then
        missing_deps+=("npm")
    fi
    
    # Vérifier PostgreSQL
    if ! command -v psql >/dev/null 2>&1; then
        missing_deps+=("PostgreSQL")
    fi
    
    # Vérifier Git
    if ! command -v git >/dev/null 2>&1; then
        missing_deps+=("Git")
    fi
    
    if [[ ${#missing_deps[@]} -gt 0 ]]; then
        log_warning "Dépendances manquantes: ${missing_deps[*]}"
        return 1
    fi
    
    log_success "Toutes les dépendances sont installées"
    return 0
}

# =============================================================================
# FONCTIONS D'INSTALLATION
# =============================================================================

install_system_dependencies() {
    if [[ "${INSTALL_STATUS[system_deps]}" == "true" ]]; then
        log_info "Dépendances système déjà installées, passage à l'étape suivante"
        return 0
    fi
    
    log_step "Installation des dépendances système"
    
    case $OS in
        ubuntu)
            log_info "Mise à jour du cache des paquets..."
            sudo apt-get update -qq || {
                log_error "Échec de la mise à jour du cache APT"
                return 1
            }
            
            log_info "Installation des outils de base..."
            sudo apt-get install -y -qq \
                curl wget git build-essential software-properties-common \
                ca-certificates gnupg lsb-release bc || {
                log_error "Échec de l'installation des dépendances Ubuntu"
                return 1
            }
            ;;
        
        centos|fedora)
            log_info "Mise à jour du système..."
            sudo $PACKAGE_MANAGER update -y -q || {
                log_error "Échec de la mise à jour du système"
                return 1
            }
            
            log_info "Installation des outils de base..."
            if [[ $OS == "centos" ]]; then
                sudo yum groupinstall -y -q "Development Tools"
                sudo yum install -y -q curl wget git bc
            else
                sudo dnf groupinstall -y -q "Development Tools"
                sudo dnf install -y -q curl wget git bc
            fi || {
                log_error "Échec de l'installation des dépendances $OS"
                return 1
            }
            ;;
        
        macos)
            log_info "Vérification/installation de Homebrew..."
            if ! command -v brew >/dev/null 2>&1; then
                log_info "Installation de Homebrew..."
                /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || {
                    log_error "Échec de l'installation de Homebrew"
                    return 1
                }
            fi
            
            log_info "Installation des outils de base..."
            brew install curl wget git bc || {
                log_error "Échec de l'installation des dépendances macOS"
                return 1
            }
            ;;
    esac
    
    INSTALL_STATUS[system_deps]=true
    log_success "Dépendances système installées"
    show_progress 1 10 "Dépendances système"
}

install_nodejs() {
    if [[ "${INSTALL_STATUS[nodejs]}" == "true" ]] || verify_nodejs_version; then
        log_info "Node.js OK, passage à l'étape suivante"
        INSTALL_STATUS[nodejs]=true
        show_progress 2 10 "Node.js"
        return 0
    fi
    
    log_step "Installation de Node.js $MIN_NODE_VERSION"
    
    case $OS in
        ubuntu)
            log_info "Installation de Node.js via NodeSource..."
            curl -fsSL https://deb.nodesource.com/setup_${MIN_NODE_VERSION}.x | sudo -E bash - || {
                log_error "Échec du téléchargement du script NodeSource"
                return 1
            }
            sudo apt-get install -y nodejs || {
                log_error "Échec de l'installation de Node.js"
                return 1
            }
            ;;
        
        centos|fedora)
            log_info "Installation de Node.js via NodeSource..."
            curl -fsSL https://rpm.nodesource.com/setup_${MIN_NODE_VERSION}.x | sudo bash - || {
                log_error "Échec du téléchargement du script NodeSource"
                return 1
            }
            sudo $PACKAGE_MANAGER install -y nodejs || {
                log_error "Échec de l'installation de Node.js"
                return 1
            }
            ;;
        
        macos)
            log_info "Installation de Node.js via Homebrew..."
            brew install node@${MIN_NODE_VERSION} || {
                log_error "Échec de l'installation de Node.js"
                return 1
            }
            ;;
    esac
    
    # Vérification post-installation
    if ! verify_nodejs_version; then
        log_error "Node.js installé mais version incorrecte"
        return 1
    fi
    
    INSTALL_STATUS[nodejs]=true
    log_success "Node.js $(node --version) installé"
    show_progress 2 10 "Node.js"
}

verify_nodejs_version() {
    if command -v node >/dev/null 2>&1; then
        local version=$(node --version | sed 's/v//')
        local major=$(echo "$version" | cut -d. -f1)
        [[ $major -ge $MIN_NODE_VERSION ]]
    else
        return 1
    fi
}

install_postgresql() {
    if [[ "${INSTALL_STATUS[postgresql]}" == "true" ]] || command -v psql >/dev/null 2>&1; then
        log_info "PostgreSQL OK, passage à l'étape suivante"
        INSTALL_STATUS[postgresql]=true
        show_progress 3 10 "PostgreSQL"
        return 0
    fi
    
    log_step "Installation de PostgreSQL"
    
    case $OS in
        ubuntu)
            log_info "Installation de PostgreSQL..."
            sudo apt-get install -y postgresql postgresql-contrib || {
                log_error "Échec de l'installation de PostgreSQL"
                return 1
            }
            sudo systemctl start postgresql
            sudo systemctl enable postgresql
            ;;
        
        centos|fedora)
            log_info "Installation de PostgreSQL..."
            sudo $PACKAGE_MANAGER install -y postgresql-server postgresql-contrib || {
                log_error "Échec de l'installation de PostgreSQL"
                return 1
            }
            
            if [[ $OS == "centos" ]]; then
                sudo postgresql-setup initdb
            else
                sudo postgresql-setup --initdb
            fi
            
            sudo systemctl start postgresql
            sudo systemctl enable postgresql
            ;;
        
        macos)
            log_info "Installation de PostgreSQL via Homebrew..."
            brew install postgresql@${MIN_POSTGRES_VERSION} || {
                log_error "Échec de l'installation de PostgreSQL"
                return 1
            }
            brew services start postgresql@${MIN_POSTGRES_VERSION}
            ;;
    esac
    
    # Attendre que PostgreSQL soit prêt
    log_info "Attente du démarrage de PostgreSQL..."
    for i in {1..30}; do
        if sudo -u postgres psql -c '\q' 2>/dev/null; then
            break
        fi
        sleep 1
        if [[ $i -eq 30 ]]; then
            log_error "PostgreSQL ne répond pas après 30 secondes"
            return 1
        fi
    done
    
    INSTALL_STATUS[postgresql]=true
    log_success "PostgreSQL installé et démarré"
    show_progress 3 10 "PostgreSQL"
}

install_docker() {
    if [[ "${INSTALL_STATUS[docker]}" == "true" ]] || command -v docker >/dev/null 2>&1; then
        log_info "Docker OK, passage à l'étape suivante"
        INSTALL_STATUS[docker]=true
        show_progress 4 10 "Docker"
        return 0
    fi
    
    log_step "Installation de Docker (optionnel)"
    
    case $OS in
        ubuntu)
            log_info "Installation de Docker..."
            curl -fsSL https://get.docker.com -o get-docker.sh || {
                log_warning "Échec du téléchargement du script Docker"
                return 0  # Docker est optionnel
            }
            sudo sh get-docker.sh || {
                log_warning "Échec de l'installation de Docker"
                return 0
            }
            sudo usermod -aG docker "$USER"
            
            log_info "Installation de Docker Compose..."
            sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" \
                -o /usr/local/bin/docker-compose || {
                log_warning "Échec de l'installation de Docker Compose"
                return 0
            }
            sudo chmod +x /usr/local/bin/docker-compose
            ;;
        
        macos)
            log_warning "Installez Docker Desktop manuellement depuis docker.com"
            return 0
            ;;
        
        *)
            log_warning "Installation manuelle de Docker recommandée"
            return 0
            ;;
    esac
    
    INSTALL_STATUS[docker]=true
    log_success "Docker installé (redémarrage requis pour les permissions)"
    show_progress 4 10 "Docker"
}

# =============================================================================
# CRÉATION DU PROJET
# =============================================================================

create_project_structure() {
    if [[ "${INSTALL_STATUS[project_structure]}" == "true" ]] && [[ -d "$INSTALL_DIR" ]]; then
        log_info "Structure du projet déjà créée"
        show_progress 5 10 "Structure"
        return 0
    fi
    
    log_step "Création de la structure du projet"
    
    mkdir -p "$INSTALL_DIR" || {
        log_error "Impossible de créer le répertoire $INSTALL_DIR"
        return 1
    }
    
    cd "$INSTALL_DIR" || {
        log_error "Impossible d'accéder au répertoire $INSTALL_DIR"
        return 1
    }
    
    # Structure backend
    mkdir -p backend/src/{controllers,routes,services,middleware,models,utils}
    mkdir -p backend/prisma/migrations
    mkdir -p backend/logs
    mkdir -p backend/tests
    
    # Structure frontend
    mkdir -p frontend/src/{components,pages,services,utils,styles,hooks,context}
    mkdir -p frontend/public
    mkdir -p frontend/tests
    
    # Autres structures
    mkdir -p nginx/conf.d
    mkdir -p database/scripts
    mkdir -p docs
    mkdir -p scripts
    
    INSTALL_STATUS[project_structure]=true
    log_success "Structure du projet créée"
    show_progress 5 10 "Structure"
}

generate_config_files() {
    log_step "Génération des fichiers de configuration"
    
    # README.md principal
    cat > README.md << 'EOF'
# 🛡️ Cyber Prevention Tool

## ⚠️ USAGE ÉTHIQUE ET ÉDUCATIF UNIQUEMENT

Cette application est destinée **exclusivement** à la formation en cybersécurité dans un cadre professionnel.

### ✅ Usages autorisés
- Formation interne d'employés à la détection de phishing
- Sensibilisation à la cybersécurité en entreprise
- Tests de sécurité avec accord écrit de la direction
- Recherche académique en cybersécurité

### ❌ Usages strictement interdits
- Attaques réelles de phishing
- Collecte non autorisée de données personnelles
- Usage malveillant ou criminel
- Violation des lois sur la protection des données

## 🚀 Installation Automatique

```bash
# Installation complète
./install_cyber_prevention_tool.sh

# Démarrage
cd cyber-prevention-tool
./start.sh
```

## 🌐 Accès

- **Interface**: http://localhost:3000
- **API**: http://localhost:3001
- **Monitoring**: http://localhost:3001/health

## 👤 Comptes de Test

| Rôle | Email | Mot de passe |
|------|-------|--------------|
| Admin | admin@cybertest.local | SecureAdmin2024! |
| User | user@cybertest.local | SecureUser2024! |

## ⚙️ Configuration

1. **SMTP** (obligatoire) : Éditez `.env`
2. **Domaines autorisés** : Variable `ALLOWED_DOMAINS`
3. **Sécurité** : Changez les clés en production

## 📊 Fonctionnalités

- ✅ Interface d'administration moderne
- ✅ Création de campagnes de simulation
- ✅ Bibliothèque de templates personnalisables  
- ✅ Tracking et analytics en temps réel
- ✅ Formation automatique des utilisateurs
- ✅ Rapports détaillés et exports
- ✅ Système de notifications
- ✅ Gestion multi-utilisateurs avec rôles

## 🔒 Sécurité

- Authentification JWT sécurisée
- Rate limiting et protection CSRF
- Validation côté serveur et client
- Logs d'audit complets
- Chiffrement des données sensibles

## 📞 Support

- **Documentation** : Consultez le dossier `/docs`
- **Logs** : `backend/logs/` pour le débogage
- **Vérification** : `./check-system.sh`

---

**⚖️ Responsabilité Légale**

L'utilisateur est entièrement responsable de l'usage conforme aux lois. Les auteurs déclinent toute responsabilité en cas d'usage malveillant.
EOF

    # .env sécurisé avec valeurs par défaut robustes
    cat > .env << 'EOF'
# =============================================================================
# CYBER PREVENTION TOOL - CONFIGURATION ENVIRONNEMENT
# =============================================================================

# Base de données PostgreSQL
DATABASE_URL="postgresql://cyber_user:CyberSecure2024!@localhost:5432/cyber_prevention_db"

# Sécurité JWT (CHANGEZ EN PRODUCTION!)
JWT_SECRET="CyberPreventionTool2024SecureJWTKeyChangeInProduction!"
JWT_EXPIRES_IN="24h"
JWT_REFRESH_EXPIRES_IN="7d"

# Configuration SMTP (OBLIGATOIRE POUR FONCTIONNER)
SMTP_HOST="smtp.gmail.com"
SMTP_PORT=587
SMTP_SECURE=false
SMTP_USER="votre-email@gmail.com"
SMTP_PASS="votre-mot-de-passe-application"
SMTP_FROM="Cyber Security Team <cyber-security@votreentreprise.com>"

# URLs de l'application
FRONTEND_URL="http://localhost:3000"
BACKEND_URL="http://localhost:3001"

# Sécurité avancée
ALLOWED_DOMAINS="votreentreprise.com,exemple.fr,test.local"
ENCRYPTION_KEY="CyberToolEncryptionKey2024SecureChangeThis!"
BCRYPT_ROUNDS=12

# Rate Limiting
RATE_LIMIT_WINDOW=900000
RATE_LIMIT_MAX=100
RATE_LIMIT_STRICT_MAX=20

# Session et cookies
SESSION_SECRET="CyberSessionSecret2024ChangeThis!"
COOKIE_SECURE=false
COOKIE_MAX_AGE=86400000

# Logging et monitoring
LOG_LEVEL="info"
LOG_FILE="./logs/app.log"
LOG_MAX_SIZE="10m"
LOG_MAX_FILES="5"

# Features flags
ENABLE_REGISTRATION=false
ENABLE_PASSWORD_RESET=true
ENABLE_EMAIL_VERIFICATION=true
ENABLE_AUDIT_LOGS=true

# Redis (optionnel, pour cache et sessions)
REDIS_URL="redis://localhost:6379"
REDIS_PASSWORD=""

# Limites de sécurité
MAX_CAMPAIGN_TARGETS=1000
MAX_FILE_UPLOAD_SIZE="5mb"
MAX_EMAIL_QUEUE_SIZE=500

# Environnement
NODE_ENV="development"
PORT=3001
FRONTEND_PORT=3000
EOF

    # .env.example (version publique)
    cp .env .env.example
    sed -i 's/CyberSecure2024!/CHANGEZ_MOT_DE_PASSE/g' .env.example
    sed -i 's/votre-email@gmail.com/VOTRE_EMAIL_SMTP/g' .env.example
    sed -i 's/votre-mot-de-passe-application/VOTRE_MOT_DE_PASSE_APP/g' .env.example

    # .gitignore complet
    cat > .gitignore << 'EOF'
# Dependencies
node_modules/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
package-lock.json
yarn.lock

# Environment variables
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Database
*.db
*.sqlite
*.sqlite3
database/backups/

# Logs
logs/
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Build directories
build/
dist/
.next/
out/

# IDE files
.vscode/
.idea/
*.swp
*.swo
*~

# OS generated files
.DS_Store
.DS_Store?
._*
