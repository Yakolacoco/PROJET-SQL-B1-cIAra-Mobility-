SELECT 
    v.id_vehicule,
    v.marque,
    v.modele,
    v.type_vehicule,
    v.autonomie_km,
    v.etat,
    v.ville,
    l.id_location,
    l.date_debut,
    l.date_fin,
    c.id_client,
    c.nom AS client_nom,
    c.prenom AS client_prenom,
    c.email AS client_email,
    s_depart.nom AS station_depart,
    s_depart.ville AS ville_depart,
    s_arrivee.nom AS station_arrivee,
    s_arrivee.ville AS ville_arrivee
FROM vehicule v
LEFT JOIN location l ON v.id_vehicule = l.id_vehicule
LEFT JOIN client c ON l.id_client = c.id_client
LEFT JOIN station s_depart ON l.id_station_depart = s_depart.id_station
LEFT JOIN station s_arrivee ON l.id_station_arrivee = s_arrivee.id_station;