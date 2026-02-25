-- =====================================================
-- QUÊTE 1 — Découverte du SQL
-- Objectif : Manipuler SELECT / FROM / WHERE
-- =====================================================

--  Afficher tous les véhicules
SELECT *
FROM vehicule;

--  Afficher uniquement les véhicules disponibles
SELECT *
FROM vehicule
WHERE etat = 'disponible';

--  Afficher les véhicules situés dans une ville donnée
SELECT *
FROM vehicule
WHERE ville = 'Paris';

--  Afficher les véhicules ayant une autonomie > 400 km
SELECT *
FROM vehicule
WHERE autonomie_km > 400;
