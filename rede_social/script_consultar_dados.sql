/*Listar todos os dados*/
SELECT * FROM posts;
SELECT * FROM comments;

/*Listar todos os dados especificando colunas*/
SELECT title, created_at FROM posts;
SELECT comment FROM comments;

/*Filtrando informações*/
SELECT title FROM posts WHERE post_id = 5;
SELECT comment FROM comments WHERE comment_id = 1;

/*Consultas relacionadas + de 1 tabela*/

/*
Listar todos os posts(title) de um usuário
junto com seu users(name)
*/

/*Forma abreviada*/
SELECT p.title, u.name 
    FROM posts AS p
INNER JOIN users AS u ON u.user_id = p.user_id
WHERE p.user_id = 1

/*Forma sem abreviação*/
SELECT posts.title, users.name 
    FROM posts
INNER JOIN users ON users.user_id = posts.user_id
WHERE posts.user_id = 1

/*
Listar um post(title, description) pelo 
seu id e seus respectivos comentários(comment)
*/
SELECT 
    p.title, p.description, c.comment
FROM posts p
JOIN comments c ON c.post_id = p.post_id
WHERE p.post_id = 1;

/*
Listar o usuario(name) pelo seu id,
seus posts e comentários dos posts
*/
SELECT 
    u.name, p.title, c.comment
FROM users AS u
INNER JOIN posts AS p ON p.user_id = u.user_id
INNER JOIN comments AS c ON c.post_id = p.post_id
WHERE u.user_id = 1