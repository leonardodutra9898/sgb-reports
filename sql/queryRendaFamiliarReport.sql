SET @ID_ALUNO = 4;

SELECT sum(renda_mensal) as soma, count(id) as total, aluno_id 
FROM situacao_socio_econ_familiar WHERE aluno_id = @ID_ALUNO
UNION
SELECT sum(renda_mensal) as soma, count(id) as total, aluno_id
FROM inscricao WHERE aluno_id = @ID_ALUNO