/*1*/
INSERT INTO Livros (Titulo, Autor, Ano_Publicacao, Disponivel, Categoria, ISBN, Editora, Paginas, Idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Francês');

/*2*/
UPDATE Livros
 SET Disponivel = FALSE
 WHERE Ano_Publicacao < 1900;

/*3*/
UPDATE Livros
 SET Editora = 'Plume Books'
 WHERE Titulo = '1984';

/*4*/
DELETE FROM Livros
 WHERE Idioma = 'Francês'
 AND Ano_Publicacao < 2000;

/*5*/
SELECT * FROM Livros
 WHERE Paginas > 600;

/*6*/
SELECT Categoria, COUNT(*) AS Total_Livros FROM Livros GROUP BY Categoria;

/*7*/
SELECT * FROM Livros
 ORDER BY ID DESC LIMIT 5;

/*8*/
SELECT AVG(Paginas) AS Media_Paginas FROM Livros WHERE Disponibilidade = TRUE;

/*9*/
SELECT * FROM Livros
 ORDER BY Ano_Publicacao DESC;

/*10*/
SELECT * FROM Livros
 WHERE Titulo LIKE 'S%' AND Ano_Publicacao BETWEEN 1970 AND 1990;