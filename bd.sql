
CREATE TABLE Livres (
    ID_livre INT PRIMARY KEY,
    Titre VARCHAR(255),
    Auteur_id VARCHAR(255),
    Genre VARCHAR(100),
    Annee_de_publication INT
);


CREATE TABLE Emprunts (
    ID_emprunt INT PRIMARY KEY,
    ID_livre INT,
    Nom_emprunteur VARCHAR(255),
    Date_emprunt DATE,
    Date_retour DATE,
    FOREIGN KEY (ID_livre) REFERENCES Livres(ID_livre)
);


CREATE TABLE Auteurs (
    ID_auteur INT PRIMARY KEY,
    Nom VARCHAR(100),
    Prenom VARCHAR(100),
    Nationalite VARCHAR(100),
    Date_de_naissance DATE,
    Biographie TEXT
);


INSERT INTO Livres (ID_livre, Titre, Auteur_id, Genre, Annee_de_publication)
VALUES
    (1, 'Le Petit Prince', '2', 'Conte', 1943),
    (2, '1984', '2', 'Roman de science-fiction', 1949),
    (3, 'Orgueil et Préjugés', '1', 'Roman', 1813),
    (4, 'Harry Potter à l''école des sorciers', '5', 'Roman de fantasy', 1997),
    (5, 'Le Seigneur des Anneaux', '5', 'Roman de fantasy', 1954),
    (6, 'Crime et Châtiment', '8', 'Roman psychologique', 1866),
    (7, 'Le Vieil Homme et la Mer', '5', 'Roman', 1952),
    (8, 'Les Misérables', '3', 'Roman historique', 1862);


INSERT INTO Emprunts (ID_emprunt, ID_livre, Nom_emprunteur, Date_emprunt, Date_retour)
VALUES
    (1, 1, 'Alice', '2024-03-19', '2024-04-02'),
    (2, 3, 'Bob', '2024-03-18', '2024-03-25'),
    (3, 4, 'Charlie', '2024-03-20', NULL),
    (4, 5, 'David', '2024-03-17', '2024-04-10'),
    (5, 6, 'Emma', '2024-03-18', '2024-03-26'),
    (6, 8, 'Frank', '2024-03-20', '2024-04-05');


INSERT INTO Auteurs (ID_auteur, Nom, Prenom, Nationalite, Date_de_naissance, Biographie)
VALUES
    (1, 'Saint-Exupéry', 'Antoine', 'Française', '1900-06-29', 'Antoine de Saint-Exupéry était un écrivain, poète, et aviateur français.'),
    (2, 'Orwell', 'George', 'Britannique', '1903-06-25', 'George Orwell était un écrivain et journaliste anglais.'),
    (3, 'Austen', 'Jane', 'Britannique', '1775-12-16', 'Jane Austen était une romancière anglaise, célèbre pour ses romans d''amour et de mœurs.'),
    (4, 'Rowling', 'J.K.', 'Britannique', '1965-07-31', 'J.K. Rowling est une autrice britannique, surtout connue pour la série de livres Harry Potter.'),
    (5, 'Tolkien', 'J.R.R.', 'Britannique', '1892-01-03', 'J.R.R. Tolkien était un écrivain, philologue et professeur anglais, surtout connu pour ses romans Le Seigneur des Anneaux.'),
    (6, 'Dostoïevski', 'Fiodor', 'Russe', '1821-11-11', 'Fiodor Dostoïevski était un écrivain russe, connu pour ses romans explorant les aspects psychologiques et philosophiques de l''âme humaine.'),
    (7, 'Hemingway', 'Ernest', 'Américaine', '1899-07-21', 'Ernest Hemingway était un écrivain américain, lauréat du prix Nobel de littérature en 1954, célèbre pour son style épuré et son réalisme.'),
    (8, 'Hugo', 'Victor', 'Française', '1802-02-26', 'Victor Hugo était un écrivain, poète et homme politique français, considéré comme l''un des plus grands écrivains de la langue française.');