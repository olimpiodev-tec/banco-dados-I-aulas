/*Listando dados da tabela posts*/
SELECT * FROM posts;

/*Listando somente colunas específicas*/
SELECT title, description FROM posts;

/*Listando informações somente do post 1*/
SELECT * FROM posts WHERE post_id = 1;

/*Listando somente o titulo do post 2*/
SELECT title FROM posts WHERE post_id = 2;

/*Listar todos os comentários*/
SELECT * FROM comments;

/*Listar o comentário com identificador = 2*/
SELECT * FROM comments WHERE comment_id = 2;

/*Listar somente as colunas comentário e created_at*/
SELECT comment, created_at FROM comments;

/*Listar somente a coluna comentário com identificador = 4*/
SELECT comment FROM comments WHERE comment_id = 4;
