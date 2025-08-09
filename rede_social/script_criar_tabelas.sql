
/*Criando a tabela de posts*/
CREATE TABLE posts (
    post_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL
);

/*Criando a tabela de comentarios*/
CREATE TABLE comments (
    comment_id INT PRIMARY KEY,
    comment TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    post_id INT REFERENCES posts(post_id)
);
