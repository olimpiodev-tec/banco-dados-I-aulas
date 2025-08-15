INSERT INTO posts (
    title, description
) VALUES (
    'Sextou',
    'Finalmente sexta-feira'
);

INSERT INTO posts (
    title
) VALUES 
('Palmeiras ganhou ontem'), 
('A melhor lanchonete de Capivari é  Sandubrothers');

INSERT INTO comments (
    comment, post_id
) VALUES 
('Palmeiras jogou muito bem', 4), 
('Alguns alunos faltaram', 5), 
('Hoje é lanche free no Sandubrothers', 6);

SELECT * FROM posts;