drop database if exists revision;
create database if not exists revision character set utf8 collate utf8_general_ci;

use revision;

Create table if not exists marques(
    id int(11) primary key auto_increment,
    nom varchar(255) not null,
    date_creation datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_modification datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) Engine=InnoDB default charset=utf8 Auto_increment=1;

CREATE TABLE IF NOT EXISTS vehicules (
    id int(11) PRIMARY KEY AUTO_INCREMENT,
    id_marque int(11) NOT NULL,
    modele varchar(255) NOT NULL,
    description text NOT NULL,
    nb_portes int(11) NOT NULL,
    date_creation datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_modification datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    motorisation ENUM('diesel', 'essence', 'hybride', 'electrique') NOT NULL,
    couleur varchar(255) NOT NULL,
    prix decimal(10,2) not null,
    foreign key(id_marque) references marques(id)
)ENGINE=InnoDB DEFAULT charset=utf8 Auto_increment=10;

INSERT INTO marques (nom) VALUES
('Honda'),
('Chevrolet'),
('Tesla'),
('Toyota'),
('Ford'),
('BMW'),
('Mercedes-Benz'),
('Audi'),
('Nissan'),
('Hyundai');

-- Jeu de données pour la table "vehicules"
INSERT INTO vehicules (id_marque, modele, description, nb_portes, motorisation, couleur, prix)
VALUES
(1, 'Civic', 'Voiture compacte polyvalente', 4, 'essence', 'Rouge', 25000.00),
(2, 'Malibu', 'Berline élégante et spacieuse', 4, 'diesel', 'Bleu', 28000.00),
(3, 'Model 3', 'Véhicule électrique compact', 4, 'electrique', 'Blanc', 45000.00),
(4, 'Camry', 'Sedan fiable et économe en carburant', 4, 'hybride', 'Vert', 30000.00),
(5, 'F-150', 'Camionnette puissante', 2, 'essence', 'Noir', 35000.00),
(6, 'X5', 'VUS de luxe', 4, 'diesel', 'Gris', 60000.00),
(7, 'C-Class', 'Berline de luxe', 4, 'essence', 'Bleu foncé', 55000.00),
(8, 'A4', 'Berline sportive', 4, 'essence', 'Argent', 50000.00),
(9, 'Altima', 'Berline élégante', 4, 'essence', 'Rouge foncé', 28000.00),
(10, 'Santa Fe', 'VUS familial', 4, 'essence', 'Blanc nacré', 32000.00);