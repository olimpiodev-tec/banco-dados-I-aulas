--1. Listar todos os hóspedes com seus emails
-- Saída esperada nome, cpf, email
SELECT nome, cpf, email FROM hospedes;

--2. Listar os quartos disponíveis
-- Saída esperada: tipo, andar, valor diária
SELECT 
    tipo, andar, valor_diaria
FROM quartos
WHERE disponivel = TRUE;

--3. Listar a reserva de um hóspede em específico
-- Saída esperada: nome hosp, tipo quarto, andar,
-- datas checkin e checkout

SELECT 
    h.nome, q.tipo AS quarto, q.andar, 
    r.data_checkin, r.data_checkout
FROM reservas AS r
JOIN hospedes AS h ON h.cpf = r.cpf_hospede
JOIN quartos AS q ON q.quarto_id = r.quarto_id
WHERE 
    h.cpf = '23456789012'

-- 4. Listar as reservas especificando um período
-- De Datas de ínicio e fim
-- Saída esperada: nome hosp, tipo quarto, andar,
-- datas checkin e checkout
SELECT 
    h.nome, q.tipo AS quarto, q.andar, 
    r.data_checkin, r.data_checkout
FROM reservas AS r
JOIN hospedes AS h ON h.cpf = r.cpf_hospede
JOIN quartos AS q ON q.quarto_id = r.quarto_id
WHERE
    r.data_checkin 
    BETWEEN '2025-09-02' AND '2025-09-05'

-- 4. Valores gastos por reserva
-- Saída esperada: reserva_id, totais, desconto
SELECT 
    reserva_id, total_reserva, total_consumos,
    total_servicos, percentual_desconto
FROM
    reservas
ORDER BY
    total_reserva DESC;

-- 5. Listar os produtos mais consumidos
-- Saída esperada: descrição, qtde total
SELECT  
    p.descricao, SUM(cp.quantidade) AS qtde_total
FROM produtos AS p
JOIN consumos_produtos AS cp
ON cp.produto_id = p.produto_id
GROUP BY p.descricao 
ORDER BY qtde_total DESC;

-- 6. Exibir o valor total da reserva do hóspede
-- Incluindo tudo, ou seja, todos os total
-- Saída esperada: nome e cpf do hospede, valor total
SELECT
    h.nome, h.cpf,
    (r.total_reserva + r.total_consumos + r.total_servicos) AS valor_total
FROM
    reservas AS r
JOIN hospedes AS h ON h.cpf = r.cpf_hospede
ORDER BY
    valor_total DESC;  

-- 7. Listar os hóspedes com reserva pendente
-- Saída esperada: nome, datas, status
SELECT
    h.nome, r.data_checkin, 
    r.data_checkout, r.status
FROM reservas AS r
JOIN hospedes AS h ON h.cpf = r.cpf_hospede
WHERE
    r.status = 'Pendente'; 