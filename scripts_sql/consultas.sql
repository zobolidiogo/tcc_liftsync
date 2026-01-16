SELECT 
    usuario.nm_usuario AS Nome, 
    agenda.qt_dias AS Streak
FROM T_LS_AGENDA AS agenda
INNER JOIN T_LS_USUARIO AS usuario
	ON usuario.cd_usuario = agenda.cd_usuario;

SELECT 
    treino.tp_treino AS 'Tipo de treino', 
    COUNT(*) AS 'Quantidade de treinos do tipo'
FROM T_LS_TREINO AS treino
INNER JOIN T_LS_USUARIO AS usuario
    ON treino.cd_usuario = usuario.cd_usuario
WHERE usuario.cd_usuario = 1
GROUP BY treino.tp_treino;

SELECT 
    usuario.nm_usuario AS Nome,
    COUNT(*) AS 'Quantidade de Publicacoes'
FROM T_LS_PUBLICACAO AS pub
INNER JOIN T_LS_USUARIO AS usuario
    ON pub.cd_usuario = usuario.cd_usuario
GROUP BY usuario.cd_usuario, usuario.nm_usuario
ORDER BY usuario.cd_usuario;

SELECT 
    treino.nm_treino AS 'Nome do treino',
    exerc.nm_exercicio AS 'Nome do exercicio', 
    exerc.qt_series AS 'Series',
    exerc.nr_repeticoes AS 'Repeticoes'
FROM T_LS_EXERCICIO AS exerc
INNER JOIN T_LS_TREINO_EXERCICIO AS asso
    ON exerc.cd_exercicio = asso.cd_exercicio
INNER JOIN T_LS_TREINO AS treino
    ON asso.cd_treino = treino.cd_treino
WHERE treino.cd_treino = 1;

SELECT
    usuario.nm_usuario AS Nome,
    acom.dt_nutri AS 'Data',
    SUM((info.vl_energetico / info.tm_porcao) * asso_ali.qt_alimento)
        AS 'Valor energetico ingerido no dia (kcal)',
    SUM((info.qt_carboidrato / info.tm_porcao) * asso_ali.qt_alimento)
        AS 'Quantidade de carboidrato ingerido no dia (g)',
    SUM((info.qt_proteina / info.tm_porcao) * asso_ali.qt_alimento)
        AS 'Quantidade de proteína ingerido no dia (g)',
    SUM((info.qt_acucar_total / info.tm_porcao) * asso_ali.qt_alimento)
        AS 'Quantidade de açúcar total ingerido no dia (g)',
    SUM((info.qt_gordura_total / info.tm_porcao) * asso_ali.qt_alimento)
        AS 'Quantidade de gordura total ingerido no dia (g)',
    SUM((info.qt_sodio / info.tm_porcao) * asso_ali.qt_alimento)
        AS 'Quantidade de sódio ingerido no dia (mg)'
FROM T_LS_INFORMACAO_NUTRICIONAL AS info
INNER JOIN T_LS_ALIMENTO AS ali
    ON info.cd_alimento = ali.cd_alimento
INNER JOIN T_LS_REFEICAO_ALIMENTO AS asso_ali
    ON ali.cd_alimento = asso_ali.cd_alimento
INNER JOIN T_LS_REFEICAO AS ref
    ON asso_ali.cd_refeicao = ref.cd_refeicao
INNER JOIN T_LS_ACOMPANHAMENTO AS acom
    ON ref.cd_nutri = acom.cd_nutri
INNER JOIN T_LS_USUARIO AS usuario
    ON acom.cd_usuario = usuario.cd_usuario
WHERE (usuario.cd_usuario = 1
    OR usuario.cd_usuario = 2)
    AND acom.dt_nutri < '2026-01-09'
GROUP BY usuario.cd_usuario, usuario.nm_usuario, acom.dt_nutri
ORDER BY usuario. cd_usuario;