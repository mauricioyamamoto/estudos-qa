-- Exercício 1: Buscar usuários de Ribeirão Preto ou Campinas
-- com idade igual ou superior a 30 anos.
-- Ordenar pela idade em ordem decrescente.

SELECT usuarios.nome,
       cidades.nome_cidade,
       usuarios.idade
FROM usuarios
INNER JOIN cidades
    ON usuarios.cidade_id = cidades.id
WHERE cidades.nome_cidade IN ('Ribeirão Preto', 'Campinas')
  AND usuarios.idade >= 30
ORDER BY usuarios.idade DESC;


-- Exercício 2: Buscar usuários que não moram em São Paulo
-- e têm entre 25 e 40 anos.
-- Ordenar pelo nome em ordem alfabética.

SELECT usuarios.nome,
       cidades.nome_cidade,
       usuarios.idade
FROM usuarios
INNER JOIN cidades
    ON usuarios.cidade_id = cidades.id
WHERE cidades.nome_cidade <> 'São Paulo'
  AND usuarios.idade BETWEEN 25 AND 40
ORDER BY usuarios.nome ASC;