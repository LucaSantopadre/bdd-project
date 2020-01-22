CREATE PROCEDURE `temp-test`.`is_CF_insegnante_valid`(IN CF CHAR(16))
	SELECT EXISTS( SELECT CodFisc_I FROM `temp-test`.Insegnante i
				   WHERE i.CodFisc_I = CF )  as is_valid_cf ;


CREATE PROCEDURE `temp-test`.`is_piscina_addetto_valid`(IN Nome_Piscina CHAR(16))
	SELECT EXISTS( SELECT Nome_P FROM `temp-test`.Piscina p
				   WHERE p.Nome_P = Nome_Piscina )  as is_valid_nome_p ;
