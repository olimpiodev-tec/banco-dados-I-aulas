/*Criando a tabela de posts*/
CREATE TABLE posts (
    post_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT now()
);

/*Criando a tabela de comentarios*/
CREATE TABLE comments (
    comment_id SERIAL PRIMARY KEY,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    post_id INT REFERENCES posts(post_id)
);