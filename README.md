#  PROJET SQL B1 - cIAra Mobility

##  Présentation du Projet
Ce projet a été réalisé dans le cadre de notre formation B1. Nous occupons le rôle de **Techniciens Data Juniors** pour l'entreprise fictive **cIAra Mobility**, spécialisée dans la location de véhicules électriques partagés (voitures, scooters, trottinettes et vélos) dans plusieurs grandes villes françaises.

**Objectif :** Interroger une base de données PostgreSQL pour répondre à des besoins métier concrets, allant de la simple consultation de stock à l'analyse de l'activité des clients.

---

##  Membres du Binôme
- **[NOM Prénom 1]**
- **[NOM Prénom 2]**

---

##  Technologies Utilisées
- **SGBD :** PostgreSQL
- **Langage :** SQL
- **Outils :** pgAdmin 4 / Terminal PostgreSQL
- **Versionning :** GitHub

---

##  Structure du Dépôt
Le projet est organisé par "Quêtes" pour faciliter la lecture et l'évaluation :

* `00_installation_db.sql` : Script de création des tables et insertion des données de test.
* `01_quete_decouverte.sql` : Requêtes de base (SELECT, WHERE).
* `02_quete_tris_filtres.sql` : Organisation des données (ORDER BY).
* `03_quete_jointures.sql` : Relations entre les tables (JOIN).
* `04_quete_agregation.sql` : Statistiques et calculs (COUNT, AVG, GROUP BY).
* `05_quete_cas_metier.sql` : Requêtes avancées (HAVING, LEFT JOIN).

---

##  Schéma de la Base de Données
La base de données est composée de 4 tables principales :
1.  **vehicule** : Stocke les informations techniques et la localisation des engins.
2.  **station** : Liste les points de retrait et de dépôt des véhicules.
3.  **client** : Informations personnelles des utilisateurs.
4.  **location** : Table de liaison enregistrant chaque trajet (qui, quoi, où, quand).

---

##  Installation et Test
Pour tester nos requêtes sur votre instance PostgreSQL :

1.  Clonez ce dépôt :
    ```bash
    git clone [LIEN_DE_VOTRE_DEPOT]
    ```
2.  Exécutez le script `00_installation_db.sql` dans votre outil (pgAdmin ou psql) pour créer l'environnement.
3.  Ouvrez les fichiers des quêtes 1 à 5 pour consulter les solutions aux besoins métier.

---

##  Points Clés de l'Analyse
Lors de ce projet, nous avons particulièrement veillé à :
* **La gestion des valeurs nulles :** Utilisation de `LEFT JOIN` pour les locations en cours (qui n'ont pas encore de station d'arrivée).
* **La clarté du code :** Chaque requête est commentée pour expliquer la logique métier derrière les mots-clés SQL utilisés.
* **La rigueur des données :** Mise en place de clés primaires (`PRIMARY KEY`) et étrangères (`FOREIGN KEY`) pour garantir l'intégrité des données de cIAra Mobility.
