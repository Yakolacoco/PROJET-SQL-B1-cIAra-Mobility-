-- =====================================================
-- QUÊTE 2 — Tri et filtres
-- Notions : ORDER BY / filtres multiples
-- =====================================================

-- 1️⃣ Véhicules triés par autonomie décroissante
SELECT *
FROM vehicule
ORDER BY autonomie_km DESC;

--------------------------------------------------------

-- 2️⃣ Véhicules disponibles triés par ville puis marque
SELECT *
FROM vehicule
WHERE etat = 'disponible'
ORDER BY ville ASC, marque ASC;

--------------------------------------------------------

-- 3️⃣ Liste des clients par ordre alphabétique
SELECT *
FROM client
ORDER BY nom ASC, prenom ASC;
