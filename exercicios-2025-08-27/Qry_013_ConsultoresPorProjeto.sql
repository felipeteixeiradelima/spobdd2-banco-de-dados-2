SELECT id_projeto, COUNT(id_consultor) AS 'Nº Consultores' FROM consultor_projeto
GROUP BY id_projeto
