-- ============================================================
-- CREATION DES TABLES
-- ============================================================

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

-- ============================================================
-- INSERTION DES DONNÉES
-- ============================================================

INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville)
VALUES
('Tesla', 'Model 3', 'berline', 450, 'disponible', 'Paris'),
('Renault', 'Zoe', 'citadine', 300, 'disponible', 'Lyon'),
('Peugeot', 'e-208', 'citadine', 350, 'en maintenance', 'Marseille'),
('Tesla', 'Model Y', 'SUV', 505, 'disponible', 'Paris'),
('BMW', 'i3', 'citadine', 280, 'disponible', 'Bordeaux'),
('Audi', 'e-tron', 'SUV', 420, 'en maintenance', 'Nice'),
('Mercedes', 'EQC', 'SUV', 410, 'disponible', 'Lille'),
('Volkswagen', 'ID.3', 'compacte', 420, 'disponible', 'Toulouse'),
('Hyundai', 'Kona Electric', 'SUV', 480, 'disponible', 'Paris'),
('Kia', 'EV6', 'berline', 520, 'disponible', 'Lyon'),

('Nissan', 'Leaf', 'compacte', 300, 'disponible', 'Marseille'),
('Opel', 'Corsa-e', 'citadine', 330, 'disponible', 'Nice'),
('Fiat', '500e', 'citadine', 250, 'disponible', 'Paris'),
('Honda', 'e', 'citadine', 220, 'disponible', 'Lyon'),
('Mazda', 'MX-30', 'SUV', 200, 'disponible', 'Bordeaux'),

('Skoda', 'Enyaq', 'SUV', 510, 'disponible', 'Toulouse'),
('Cupra', 'Born', 'compacte', 420, 'disponible', 'Paris'),
('Volvo', 'XC40 Recharge', 'SUV', 400, 'disponible', 'Lille'),
('Ford', 'Mustang Mach-E', 'SUV', 490, 'disponible', 'Nice'),
('Porsche', 'Taycan', 'berline', 450, 'disponible', 'Paris'),

('Tesla', 'Model S', 'berline', 600, 'disponible', 'Lyon'),
('Tesla', 'Model X', 'SUV', 560, 'en maintenance', 'Marseille'),
('Renault', 'Megane E-Tech', 'compacte', 450, 'disponible', 'Bordeaux'),
('Peugeot', 'e-308', 'compacte', 410, 'disponible', 'Nice'),
('Citroën', 'ë-C4', 'compacte', 350, 'disponible', 'Paris'),

('DS', 'DS3 Crossback E-Tense', 'SUV', 320, 'disponible', 'Lille'),
('Mini', 'Cooper SE', 'citadine', 230, 'disponible', 'Toulouse'),
('Jaguar', 'I-Pace', 'SUV', 470, 'disponible', 'Paris'),
('Mercedes', 'EQA', 'SUV', 400, 'disponible', 'Lyon'),
('Audi', 'Q4 e-tron', 'SUV', 450, 'disponible', 'Marseille');

INSERT INTO station (nom, ville)
VALUES
('Station A', 'Paris'),
('Station B', 'Lyon'),
('Station C', 'Marseille'),
('Station D', 'Bordeaux'),
('Station E', 'Nice'),
('Station F', 'Lille'),
('Station G', 'Toulouse'),
('Station H', 'Paris');

INSERT INTO client (nom, prenom, email)
VALUES
('Dupont', 'Jean', 'jean.dupont@email.com'),
('Martin', 'Sophie', 'sophie.martin@email.com'),
('Bernard', 'Luc', 'luc.bernard@email.com'),
('Petit', 'Emma', 'emma.petit@email.com'),
('Robert', 'Hugo', 'hugo.robert@email.com'),
('Moreau', 'Lina', 'lina.moreau@email.com'),
('Fournier', 'Ethan', 'ethan.fournier@email.com'),
('Girard', 'Chloé', 'chloe.girard@email.com');

INSERT INTO location (date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee)
VALUES
('2026-02-01', '2026-02-05', 1, 1, 1, 2),
('2026-02-10', '2026-02-12', 2, 2, 2, 3),
('2026-03-01', '2026-03-04', 3, 4, 1, 4),
('2026-03-10', '2026-03-15', 4, 5, 4, 5),
('2026-04-01', '2026-04-03', 5, 6, 5, 6),
('2026-04-10', '2026-04-12', 6, 7, 6, 7),
('2026-05-01', '2026-05-05', 7, 8, 7, 1),
('2026-05-10', '2026-05-14', 8, 9, 1, 2),
('2026-06-01', '2026-06-03', 1, 10, 2, 3),
('2026-06-10', '2026-06-12', 3, 1, 1, 2);