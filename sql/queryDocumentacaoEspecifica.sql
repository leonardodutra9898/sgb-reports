	SELECT 
		d.id, d.documento, d.documento_tipo, d.ativo, d.categoria, d.obrigatorio,
        db.beneficios_id, db.documentacao_id,
        da.formato_arquivo, da.data_postagem, da.inscricao_id, da.situacao_documento
	FROM 
		documentacao as d
	INNER JOIN 
		documentacao_arquivos as da 
	ON
		d.id = da.documentacao_id
	INNER JOIN  
		documentacao_beneficios as db
	ON
		db.documentacao_id = da.documentacao_id
    WHERE
    	d.categoria = 'ESPECIFICO'
	AND
		db.beneficios_id = 4
	AND 
		da.inscricao_id = 4