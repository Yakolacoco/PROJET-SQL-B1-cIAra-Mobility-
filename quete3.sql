-- =====================================================
-- QUÊTE 3 — Jointures
-- Notions : JOIN / clés étrangères
-- =====================================================

--  Locations avec le nom et prénom du client
SELECT 
    l.id_location,
    l.date_debut,
    l.date_fin,
    c.nom,
    c.prenom
FROM location l
JOIN client c 
    ON l.id_client = c.id_client;

--------------------------------------------------------

--  Locations avec la marque et le modèle du véhicule
SELECT 
    l.id_location,
    l.date_debut,
    l.date_fin,
    v.marque,
    v.modele
FROM location l
JOIN vehicule v 
    ON l.id_vehicule = v.id_vehicule;

--------------------------------------------------------

--  Station de départ et station d’arrivée
SELECT 
    l.id_location,
    s_depart.nom AS station_depart,
    s_arrivee.nom AS station_arrivee
FROM location l
JOIN station s_depart 
    ON l.id_station_depart = s_depart.id_station
JOIN station s_arrivee 
    ON l.id_station_arrivee = s_arrivee.id_station;
