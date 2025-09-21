# Déroulé du lancement d’une campagne de sensibilisation au phishing

```mermaid
flowchart TD

%% Connexion
A([Connexion administrateur]) --> B[Créer une campagne]

%% Ciblage
B --> C{Choix des destinataires}
C --> C1[Pôle spécifique]
C --> C2[Liste d'employés ciblés]
C --> C3[Tous les employés]

%% Template
C --> D{Sélection du modèle}
D --> D1[Template prédéfinie]
D --> D2[Création d'une nouvelle template]
D --> D3[Demande à l'IA]

%% IA Personnalisation
D3 --> E{IA dispose infos + autorisation ?}
E -->|Oui| E1[Personnalisation par poste et pôle]
E -->|Non| E2[Template standard]

%% Validation
D1 --> F[Confirmation de la campagne]
D2 --> F
E1 --> F
E2 --> F

%% Lancement
F --> G[Envoi automatique des e-mails simulés]

%% Interaction employés
G --> H{Employés reçoivent e-mail}
H --> H1[Cliquent sur le lien]
H --> H2[Ignorent le mail]

%% Suivi
H1 --> I[Redirection vers page cible définie]
I --> J[Enregistrement du clic]
J --> K[Analyse : nb d’employés + pôles touchés]

%% Formation
J --> L[IA génère une formation de sensibilisation]
L --> M{Lecture rapide détectée ?}
M -->|Oui| M1[Administrateur peut demander une formation renforcée par consultant]
M -->|Non| N[Formation validée]

%% Rapport final
N --> O[IA génère rapport final]
M1 --> O
K --> O

%% Consultation
O --> P[Rapport consultable via "Gestion des campagnes"]
P --> Q[Soumission des résultats à la direction]

---

Veux-tu que je t’ajoute aussi une **seconde vue Mermaid en mode “gantt”** (chronologique) pour illustrer la timeline de la campagne ?
