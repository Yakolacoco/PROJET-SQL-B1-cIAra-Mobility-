-- =====================================================
-- QUÊTE 1 — Découverte du SQL
-- Objectif : Manipuler SELECT / FROM / WHERE
-- =====================================================

-- 1️⃣ Afficher tous les véhicules
SELECT *
FROM vehicule;

-- 2️⃣ Afficher uniquement les véhicules disponibles
SELECT *
FROM vehicule
WHERE etat = 'disponible';

-- 3️⃣ Afficher les véhicules situés dans une ville donnée
-- 👉 Modifier la ville si nécessaire
SELECT *
FROM vehicule
WHERE ville = 'Paris';

-- 4️⃣ Afficher les véhicules ayant une autonomie > 400 km
SELECT *
FROM vehicule
WHERE autonomie_km > 400;
