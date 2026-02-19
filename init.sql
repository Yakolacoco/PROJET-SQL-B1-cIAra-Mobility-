-- Création des tables
CREATE TABLE vehicule (
    id_vehicule SERIAL PRIMARY KEY,
    marque VARCHAR(50),
    modele VARCHAR(50),
    type_vehicule VARCHAR(50),
    autonomie_km INT,
    etat VARCHAR(20),
    ville VARCHAR(50)
);

CREATE TABLE station (
    id_station SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    ville VARCHAR(50)
);

CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE location (
    id_location SERIAL PRIMARY KEY,
    date_debut DATE,
    date_fin DATE,
    id_client INT REFERENCES client(id_client),
    id_vehicule INT REFERENCES vehicule(id_vehicule),
    id_station_depart INT REFERENCES station(id_station),
    id_station_arrivee INT REFERENCES station(id_station)
);

-- Données de test
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville)
VALUES
('Tesla', 'Model 3', 'berline', 450, 'disponible', 'Paris'),
('Renault', 'Zoe', 'citadine', 300, 'disponible', 'Lyon'),
('Peugeot', 'e-208', 'citadine', 350, 'en maintenance', 'Marseille');

INSERT INTO station (nom, ville)
VALUES
('Station A', 'Paris'),
('Station B', 'Lyon'),
('Station C', 'Marseille');

INSERT INTO client (nom, prenom, email)
VALUES
('Dupont', 'Jean', 'jean.dupont@email.com'),
('Martin', 'Sophie', 'sophie.martin@email.com');

INSERT INTO location (date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee)
VALUES
('2026-02-01', '2026-02-05', 1, 1, 1, 2),
('2026-02-10', '2026-02-12', 2, 2, 2, 3);