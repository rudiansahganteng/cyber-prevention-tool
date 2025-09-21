# Déroulé d’une campagne de simulation phishing

## Vue détaillée

```mermaid
flowchart TD
    A[Connexion administrateur au panel] --> B[Création d'une campagne]
    B --> C{Ciblage}
    C --> C1[Pôle spécifique]
    C --> C2[Employés ciblés]
    C --> C3[Tous les employés]

    B --> D{Choix du modèle}
    D --> D1[Template existant]
    D --> D2[Création manuelle]
    D --> D3[Génération IA]

    D3 --> E{IA a les infos et autorisation ?}
    E -->|Oui| F[Emails personnalisés par poste et pôle]
    E -->|Non| G[Emails standardisés]

    F --> H[Validation de la campagne]
    G --> H[Validation de la campagne]

    H --> I[Envoi des emails]
    I --> J[Employés reçoivent et cliquent ou non]

    J --> K[Redirection vers page cible définie]
    K --> L[Collecte des clics et stats par pôle]

    L --> M[Formation automatique générée par IA]
    M --> N{Lecture correcte ?}
    N -->|Oui| O[Formation validée]
    N -->|Non| P[Notification administrateur]
    P --> Q[Possibilité d’intervention consultant]

    O --> R[Génération du rapport de campagne]
    Q --> R

    R --> S[Consultation via "Gestion des campagnes"]
    S --> T[Soumission du rapport à la direction]
