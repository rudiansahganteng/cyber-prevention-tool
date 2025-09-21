# ⌨️ PhishGuard BASIC 
## Système de Formation par Sensibilisation au Phishing Self-Hosted

<div align="center">

[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-18+-blue.svg)](https://reactjs.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14+-blue.svg)](https://postgresql.org/)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://docker.com/)
[![License](https://img.shields.io/badge/License-Internal_Use-red.svg)](#licence)

**Plateforme complète de simulation de phishing pour la formation en cybersécurité**

</div>

---

# Plateforme de Sensibilisation à la Sécurité — Auto-Hébergée (Éthique)

## 📋 Description

Cette plateforme open-source permet aux entreprises de former et sensibiliser leurs employés à la sécurité informatique. Elle est conçue pour fonctionner en **self-hosted**, avec une interface web pour gérer des modules pédagogiques, des campagnes de simulation et des rapports.

L'objectif principal est **éducatif** et **contrôlé** : toutes les campagnes et simulations doivent être validées par les équipes sécurité et RH avant diffusion.

Cette plateforme utilise **Gemini AI** comme modèle d'intelligence artificielle pour créer automatiquement :
- Messages de campagnes adaptés à chaque utilisateur
- Contenus pédagogiques personnalisés
- Fiches de formation individualisées
- Rapports précis et professionnels
- Le tout dans un cadre sûr et légal

---

## ✨ Fonctionnalités

### 👥 Gestion des Utilisateurs
- **Système de rôles** : Admin, Reviewer, RH, Employé
- **Interface intuitive** pour la gestion des profils
- **Authentification sécurisée** avec gestion des permissions

### 📚 Modules de Formation
- **Création interactive** de contenus pédagogiques
- **Parcours personnalisés** selon le poste et les besoins
- **Suivi des progrès** et évaluation des connaissances

### 🎯 Simulations Pédagogiques
- **Scénarios réalistes** sans données personnelles réelles
- **Tests d'hameçonnage** contrôlés et éthiques
- **Feedback immédiat** après chaque simulation

### 🤖 Intelligence Artificielle
- **Génération automatique** de contenus via Gemini AI
- **Personnalisation** des messages selon le profil utilisateur
- **Création de rapports** détaillés et professionnels

### 📊 Tableau de Bord
- **Visualisation des KPIs** de sécurité
- **Métriques d'amélioration** des performances
- **Graphiques interactifs** et analyses

### 📄 Rapports et Exports
- **Rapports anonymisés** pour audits internes
- **Exports personnalisables** (PDF, Excel, CSV)
- **Suivi longitudinal** des progrès

---

## 🛡️ Principes Éthiques et Sécurité

### 1. **Consentement et Approbation**
Toutes les campagnes doivent être validées par le responsable sécurité et RH avant diffusion.

### 2. **Protection des Données**
- Aucune collecte de mots de passe ou informations confidentielles
- Chiffrement des données sensibles
- Conformité RGPD intégrée

### 3. **Anonymisation**
Toutes les métriques et logs sont anonymisés ou pseudonymisés pour protéger la vie privée.

### 4. **Mode Sandbox**
Possibilité de tester la plateforme sans envoyer de communications réelles aux utilisateurs.

### 5. **Conformité Légale**
- **RGPD & CCPA** : Respect des réglementations
- **Droit à l'oubli** : Suppression des données sur demande
- **Transparence** : Accès aux données personnelles

---

## 🚀 Installation (Self-Hosted)

### Prérequis
- Node.js 18+
- PostgreSQL 14+
- Docker (optionnel)
- Git

### 1. Cloner le Repository
```bash
git clone https://github.com/Reaper-Official/cyber-prevention-tool/phishguard-basic.git
cd phishguard-basic
```

### 2. Installation des Dépendances
```bash
npm install
cd client && npm install
cd ../server && npm install
```

### 3. Configuration de la Base de Données
```bash
# Créer la base de données PostgreSQL
createdb phishguard_db

# Copier le fichier de configuration
cp .env.example .env

# Éditer les variables d'environnement
nano .env
```

### 4. Configuration Gemini AI
```bash
# Ajouter votre clé API Gemini dans .env
GEMINI_API_KEY=votre_cle_api_gemini
GEMINI_MODEL=gemini-pro
```

### 5. Lancement de l'Application
```bash
# Mode développement
npm run dev

# Mode production
npm run build
npm start
```

### 6. Installation avec Docker (Optionnel)
```bash
docker-compose up -d
```

---

## 📖 Utilisation

### Configuration Initiale
1. **Accédez** à `http://localhost:3000`
2. **Créez** le compte administrateur principal
3. **Configurez** les paramètres de sécurité
4. **Importez** vos utilisateurs (CSV supporté)

### Création d'une Campagne
1. **Sélectionnez** le type de simulation
2. **Définissez** les paramètres de la campagne
3. **Générez** le contenu avec Gemini AI
4. **Faites valider** par RH/Sécurité
5. **Lancez** la campagne

### Suivi et Analyse
1. **Consultez** le tableau de bord en temps réel
2. **Analysez** les résultats par département
3. **Exportez** les rapports pour management
4. **Planifiez** les formations complémentaires

---

## 🔧 Configuration Avancée

### Variables d'Environnement
```env
# Base de données
DB_HOST=localhost
DB_PORT=5432
DB_NAME=phishguard_db
DB_USER=phishguard
DB_PASS=votre_mot_de_passe

# Sécurité
JWT_SECRET=votre_secret_jwt
BCRYPT_ROUNDS=12
SESSION_TIMEOUT=3600

# Gemini AI
GEMINI_API_KEY=votre_cle_api
GEMINI_MODEL=gemini-pro
AI_MAX_TOKENS=1000

# Email (SMTP)
SMTP_HOST=smtp.votre-domaine.com
SMTP_PORT=587
SMTP_USER=noreply@votre-domaine.com
SMTP_PASS=mot_de_passe_smtp

# Application
NODE_ENV=production
PORT=3000
BASE_URL=https://phishguard.votre-domaine.com
```

### Personnalisation
- **Thèmes** : Modifiez les CSS dans `/client/src/styles/`
- **Templates** : Personnalisez les emails dans `/server/templates/`
- **Langues** : Ajoutez vos traductions dans `/client/src/i18n/`

---

## 🤝 Contribution

### Comment Contribuer
1. **Fork** le projet
2. **Créez** une branche (`git checkout -b feature/AmazingFeature`)
3. **Committez** vos changements (`git commit -m 'Add AmazingFeature'`)
4. **Push** vers la branche (`git push origin feature/AmazingFeature`)
5. **Ouvrez** une Pull Request

### Standards de Code
- **ESLint** : Respect des règles de style
- **Prettier** : Formatage automatique
- **Tests** : Coverage minimum de 80%
- **Documentation** : JSDoc pour toutes les fonctions

---

## 📞 Support

### Documentation
- **Wiki** : [Documentation complète](https://github.com/Reaper-Official/phishguard-basic/wiki)
- **API** : [Documentation API](https://github.com/Reaper-Official/phishguard-basic/docs/api)

### Contact
- **Issues** : [GitHub Issues](https://github.com/Reaper-Official/phishguard-basic/issues)
- **Discussions** : [GitHub Discussions](https://github.com/Reaper-Official/phishguard-basic/discussions)
- **Email** : support@reaper-official.com

---

## 📄 Licence

Ce projet est sous licence **Usage Interne Uniquement**. 

⚠️ **Important** : Cette plateforme est conçue exclusivement pour un usage interne en entreprise à des fins de formation en cybersécurité. Toute utilisation malveillante est strictement interdite et peut entraîner des poursuites judiciaires.

### Conditions d'Utilisation
- ✅ Formation interne des employés
- ✅ Tests de sécurité autorisés
- ✅ Audits internes de sécurité
- ❌ Attaques réelles de phishing
- ❌ Usage commercial non autorisé
- ❌ Distribution malveillante

---

## 🙏 Remerciements

- **Google Gemini AI** pour l'intelligence artificielle
- **React Team** pour le framework frontend
- **Node.js Community** pour l'écosystème backend
- **PostgreSQL** pour la base de données
- **Tous les contributeurs** qui rendent ce projet possible

---

<div align="center">

**Fait avec ❤️ par [Reaper Official](https://github.com/Reaper-Official)**

*Pour un internet plus sûr et une cybersécurité accessible à tous*

</div>
