USE db_consultoria_felipe

SELECT nomecargo, valor,
CASE nomecargo
	WHEN 'Programador Junior' THEN 'Iniciante'
    WHEN 'Web Designer Pleno' THEN 'Experiente'
    WHEN 'Analista Senior' THEN 'Avançado'
END AS NivelCargo
FROM tb_cargo
