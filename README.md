#  PROJET SQL B1 - cIAra Mobility

##  À propos de mon projet
Nous avons réalisé ce projet dans le cadre de notre formation B1. 
Pour ce cas pratique, nous nous sommes mis dans la peau d'un **Technicien Data Junior** chez **cIAra Mobility**, une entreprise de location de véhicules électriques partagés.

Notre mission a été d'explorer et d'interroger une base de données existante pour répondre aux besoins concrets de l'entreprise (gestion des stocks de véhicules, analyse des locations, suivi des clients).

##  Notre trinôme
Bien que ce dépôt retrace notre avancement, nous avons réalisé ce travail en collaboration avec :
- **[Lucas Vauclin, Mac Sorel]**
- (Moi-même : **[Thollé Romain]**)

##  Ce que nous avons fait concrètement
Tout au long de ce projet, nous avons travaillé sur plusieurs axes :
1. **Compréhension de la BDD :** Nous avons analysé la structure des 4 tables (`vehicule`, `station`, `client`, `location`) et compris comment elles étaient reliées entre elles (clés primaires et étrangères).
2. **Rédaction des requêtes SQL :** Nous avons écrit, testé et commenté nos requêtes sous PostgreSQL (de la simple sélection aux jointures et fonctions d'agrégation).
3. **Travail collaboratif :** Nous avons utilisé Git et GitHub pour versionner notre code, en faisant des commits réguliers pour prouver notre avancement et synchroniser notre travail.
4. **Préparation à l'oral :** Nous avons documenté chaque requête pour être capable d'en expliquer la logique métier lors de notre soutenance du 26 février.

##  Comment nous avons structuré mon code
Pour que notre travail soit facile à lire et à évaluer, nous avons découpé les scripts en 5 fichiers correspondants aux 5 quêtes demandées :

* `01_quete_decouverte.sql` : Les requêtes de base pour explorer les données (`SELECT`, `WHERE`).
* `02_quete_tris_filtres.sql` : La logique pour trier et affiner les recherches (`ORDER BY`).
* `03_quete_jointures.sql` : Les requêtes pour croiser les données entre plusieurs tables (`JOIN`).
* `04_quete_agregation.sql` : Les calculs de statistiques métiers (`COUNT`, `AVG`, `GROUP BY`).
* `05_quete_cas_metier.sql` : Les requêtes les plus avancées pour l'aide à la décision (`HAVING`, `LEFT JOIN`).

##  Outils et Technologies
- **SGBD :** PostgreSQL (via pgAdmin / Terminal)
- **Langage :** SQL
- **Versionning :** Git & GitHub

##  Test de notre travail
Si vous souhaitez exécuter nos requêtes :
1. Clonez ce dépôt sur votre machine : `git clone [https://github.com/Yakolacoco/PROJET-SQL-B1-cIAra-Mobility-]`
2. Connectez-vous à la base de données `ciara_mobility`.
3. Ouvrez mes fichiers `.sql` et exécutez les requêtes !