DROP PROCEDURE INSERT_CARGA_CSV_P;
DELIMITER $$;
CREATE PROCEDURE INSERT_CARGA_CSV_P(IN P_NOME_DVD_JOGO VARCHAR(150),
								    IN P_GENERO VARCHAR(100),
								    IN P_CLASSIF_IDADE INT,
								    IN P_TIPO VARCHAR(10),
								    IN P_PRECO DECIMAL(9,2),
                                    IN P_QTDE INT,
                                    IN P_USER_ID INT
								    ) 


BEGIN
   
   INSERT INTO DVD_JOGO(NOME,GENERO,CLASSIFICACAO_IDADE,TIPO,PRECO,QTDE,
	                    DATA_CRIACAO,DATA_ATUALIZACAO,ID_USUARIO)
                        VALUES(P_NOME_DVD_JOGO,P_GENERO,P_CLASSIF_IDADE,P_TIPO,P_PRECO,
                        P_QTDE,NOW(),NOW(), P_USER_ID);
   COMMIT;

END $$;