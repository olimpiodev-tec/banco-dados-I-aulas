INSERT INTO users (
    name, email
) VALUES 
('moises123', 'moises@gmail.com'), 
('ifsp', 'ifsp@gmail.com');


INSERT INTO posts (
    title, description, user_id
) VALUES (
    'Sextou',
    'Finalmente sexta-feira',
    1
);

INSERT INTO posts (
    title, user_id
) VALUES 
('Palmeiras ganhou ontem', 2), 
('A melhor lanchonete de Capivari é  Sandubrothers', 2);


INSERT INTO comments (
    comment, post_id, user_id
) VALUES 
('Palmeiras jogou muito bem', 2, 1), 
('Alguns alunos faltaram', 1, 1), 
('Hoje é lanche free no Sandubrothers', 3, 2);

