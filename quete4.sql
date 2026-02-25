-- =====================================================
-- QUÊTE 4 — Fonctions d’agrégation
-- Objectif : Manipuler COUNT / AVG / GROUP BY
-- =====================================================

--  Afficher le nombre total de véhicules
SELECT COUNT(*) AS total_vehicules
FROM vehicule;

--  Afficher le nombre de véhicules par ville
SELECT ville, COUNT(*) AS nb_vehicules
FROM vehicule
GROUP BY ville;

--  Afficher l’autonomie moyenne des véhicules
SELECT AVG(autonomie_km) AS autonomie_moyenne
FROM vehicule;

--  Afficher le nombre de locations effectuées par client
SELECT id_client, COUNT(*) AS nb_locations
FROM location
GROUP BY id_client;
