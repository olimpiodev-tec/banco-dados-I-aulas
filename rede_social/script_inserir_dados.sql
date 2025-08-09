/*Inserindo dados na tabela posts*/
INSERT INTO posts (
    post_id,
    title,
    description,
    created_at
) VALUES (
    1,
    'Sextou',
    'Hoje é sexta-feira, que alegria',
    '2025-08-08 21:30'
);

INSERT INTO posts (
    post_id,
    title,
    description,
    created_at
) VALUES (
    2,
    'O capivariano',
    'O capivariano está na primeira divisão do futebol',
    '2025-08-08 21:35'
);

/*Inserindo dados na tabela de comentários*/
INSERT INTO comments (
    comment_id,
    comment,
    created_at,
    post_id
) VALUES (
    1,
    'A aula é de banco de dados, justo na sexta',
    '2025-08-08 21:38',
    1
);

INSERT INTO comments (
    comment_id,
    comment,
    created_at,
    post_id
) VALUES (
    2,
    'Está chovendo e parece que vai fazer frio',
    '2025-08-08 21:40',
    1
);

INSERT INTO comments (
    comment_id,
    comment,
    created_at,
    post_id
) VALUES (
    3,
    'O capivariano está com um time muito bom',
    '2025-08-08 21:47',
    2
);

INSERT INTO comments (
    comment_id,
    comment,
    created_at,
    post_id
) VALUES (
    4,
    'O capivariano está reformando seu estádio, capacidade para 200 mil pessoas',
    '2025-08-08 21:50',
    2
);

