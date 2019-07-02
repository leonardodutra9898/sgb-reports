SELECT 
	i.id as cod_inscricao, i.acomp_pedag_prae, i.acomp_psi_prae, i.ajuda_custo_evento_cientifico_prae,
    i.aux_creche_prae, i.aux_emerg_prae, i.aux_moradia_prae, i.bolsa_desporto_prae, i.bolsa_ini_acad_prae,
    i.bolsista, i.cargo, i.data_hora_inscricao, i.declaracao_veracidade, i.empresa, i.estagiario, i.isencaoruprae,
    i.meio_transporte, i.moradia_rural, i.onde_faz_estagio, i.relato_familiar, i.renda_mensal, i.situacao,
    i.situacao_moradia_imovel, i.tempo_gasto_deslocamento, i.tipo_bolsa, i.tipo_moradia, i.trabalha_formalmente,
    i.valor_gasto_diariamente_transporte, i.valor_mensal_financiamento,
    a.id as cod_aluno, a.ano_conclusao, a.bolsista_escola_particular, a.celulara, a.celularb, a.cidade_agencia,
    a.cnh, a.conta_corrente, a.cpf, a.curso_outra_graduacao, a.data_nascimento, a.deficiencia, a.deficiencia_membro_familiar,
    a.doenca, a.doenca_grave_membro_familiar, a.email, a.estado_civil, a.familia_possui_plano_assis_medica,
    a.forma_ingresso, a.idade_filho_mais_novo, a.ies, a.mae_viuva, a.nacionalidade,
    a.naturalidade, a.nome_completo, a.nome_mae, a.nome_pai, a.nome_social, a.num_agencia, a.num_filhos,
    a.operador_cef, a.outra_forma_ingresso, a.outra_graduacao, a.pai_viuvo, a.percentual_bolsa,
    a.possue_guarda_filho, a.possui_deficiencia, a.qual_deficiencia_membro_familiar, 
    a.qual_doenca_grave_membro_familiar, a.quantas_pessoas_familia, a.renda_familiar, a.rg, a.sexo,
    a.siape, a.situacao_vulnerabilidade_economica, a.telefone_fixo, a.tipo_escola_ensino_medio, a.uso_continuo_medicacao,
    a.valor_assis_medica,
    l.bairro, l.cep, l.nome_rua, l.num_casa, l.referencia, l.tipo_casa, l.complemento, 
    c.nome as nome_cidade, 
    e.nome as nome_estado, e.sigla, 
    oe.descricao as oe_descricao, oe.sigla as oe_sigla, 
    b.cod_banco, b.nome_banco, 
    p.ano, p.data_abertura, p.data_encerramento, p.status_processo, 
    be.meses_concessao, be.descricao as descricao_beneficio, be.nome as nome_beneficio,
    da.semestre_cursando, da.status, da.curso
FROM 
	inscricao AS i, aluno AS a, logradouro AS l, cidade AS c, 
	estado AS e, orgao_expedidor AS oe, banco AS b, processo AS p, beneficio AS be,
	dados_academicos AS da
WHERE 
	i.aluno_id = a.id AND a.logradouro_id = l.id AND 
	a.cidade_id = c.id AND a.uf_id = e.id 
	AND a.orgao_expedidorrg_id = oe.id AND i.processo_id = p.id
	AND b.id = a.banco_id AND i.id = 4 AND be.id = p.beneficio_id 
	AND da.aluno_id = a.id 
ORDER BY da.id DESC