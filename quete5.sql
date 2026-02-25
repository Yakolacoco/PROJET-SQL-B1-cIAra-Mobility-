-- =====================================================
-- QUÊTE 5 — Cas métier
-- Objectif : Utiliser GROUP BY / HAVING / LEFT JOIN
-- =====================================================

--  Afficher les trois véhicules les plus autonomes actuellement disponibles
SELECT id_vehicule, marque, modele, autonomie_km
FROM vehicule
WHERE etat = 'disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

--  Afficher la ville possédant le plus de véhicules disponibles
SELECT ville, COUNT(*) AS nb_disponibles
FROM vehicule
WHERE etat = 'disponible'
GROUP BY ville
ORDER BY nb_disponibles DESC
LIMIT 1;

--  Afficher les clients ayant effectué au moins deux locations
SELECT id_client, COUNT(*) AS nb_locations
FROM location
GROUP BY id_client
HAVING COUNT(*) >= 2;

--  Afficher les véhicules n’ayant jamais été loués
SELECT v.id_vehicule, v.marque, v.modele
FROM vehicule v
LEFT JOIN location l ON v.id_vehicule = l.id_vehicule
WHERE l.id_vehicule IS NULL;
