-- Récupère les véhicules et leurs éventuelles locations
SELECT 
    v.id_vehicule,          -- ID du véhicule
    v.marque,               -- Marque
    v.modele,               -- Modèle
    v.type_vehicule,        -- Type (SUV, citadine, etc.)
    v.autonomie_km,         -- Autonomie
    v.etat,                 -- État du véhicule
    v.ville,                -- Ville actuelle

    l.id_location,          -- ID de la location (si existante)
    l.date_debut,           -- Début de location
    l.date_fin,             -- Fin de location

    c.id_client,            -- ID du client
    c.nom AS client_nom,    -- Nom du client
    c.prenom AS client_prenom, -- Prénom
    c.email AS client_email,   -- Email

    s_depart.nom AS station_depart,   -- Station de départ
    s_depart.ville AS ville_depart,   -- Ville de départ

    s_arrivee.nom AS station_arrivee, -- Station d'arrivée
    s_arrivee.ville AS ville_arrivee  -- Ville d'arrivée

FROM vehicule v
LEFT JOIN location l 
    ON v.id_vehicule = l.id_vehicule      -- Un véhicule peut ne pas être loué
LEFT JOIN client c 
    ON l.id_client = c.id_client          -- Client lié à la location
LEFT JOIN station s_depart 
    ON l.id_station_depart = s_depart.id_station
LEFT JOIN station s_arrivee 
    ON l.id_station_arrivee = s_arrivee.id_station;
