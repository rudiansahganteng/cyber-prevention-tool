# ⌨️ PhishGuard BASIC  
Système de Formation par Sensibilisation au Phishing SelfHosted

<div align="center">

[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-18+-blue.svg)](https://reactjs.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14+-blue.svg)](https://postgresql.org/)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://docker.com/)
[![License](https://img.shields.io/badge/License-Internal_Use-red.svg)](#licence)

**Plateforme complète de simulation de phishing pour la formation en cybersécurité**

</div>

---

# Security Awareness Platform — Self-Hosted (Éthique)

## Description

Cette plateforme open-source permet aux entreprises de former et sensibiliser leurs employés à la sécurité informatique. Elle est conçue pour fonctionner en **self-hosted**, avec une interface web pour gérer des modules pédagogiques, des campagnes de simulation et des rapports.

L’objectif principal est **éducatif** et **contrôlé** : toutes les campagnes et simulations doivent être validées par les équipes sécurité et RH avant diffusion.

Cette plateforme utilise **Gemini** comme modèle IA pour créer automatiquement:
  
- les messages pour les campagnes adaptés à chaque utilisateurs
- utilisé aussi pour générer automatiquement des contenus pédagogiques adapté à la personne
- fiches de formation adapté à la personne et création de rapports précis et PRO
- tout en restant dans un cadre sûr et légal  

---

## Fonctionnalités

- Gestion des utilisateurs et des rôles (Admin, Reviewer, RH, Employé)
- Création et gestion de modules de formation interactifs
- Simulation de scénarios pédagogiques anonymisés (aucune donnée personnelle réelle)
- Génération automatique de fiches pédagogiques et recommandations via Claude.ai
- Tableau de bord pour visualiser les KPIs et l’amélioration des performances
- Export des rapports anonymisés pour suivi et audits internes

---

## Principes Éthiques et Sécurité

1. **Consentement et approbation** : Toutes les campagnes doivent être validées par le responsable sécurité et RH.  
2. **Aucune donnée sensible** : Ne pas collecter de mots de passe, identifiants ou informations confidentielles.  
3. **Anonymisation** : Toutes les métriques et logs doivent être anonymisés ou pseudonymisés.  
4. **Mode sandbox** : Possibilité de tester la plateforme sans envoyer de communications réelles.  
5. **RGPD & conformité** : Conserver uniquement les données nécessaires et permettre l’accès/suppression selon la législation.

---

## Installation (Self-Hosted)

1. Cloner le repository :  
   ```bash
   git clone https://github.com/Reaper-Official/cyber-prevention-tool/not-defined.git
   cd security-awareness-platform
