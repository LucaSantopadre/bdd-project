#OLD
CREATE PROCEDURE `Piscine-Roma-DB`.`is_CF_insegnante_valid`(IN CF CHAR(16))
	SELECT EXISTS( SELECT CodFisc_I FROM `Piscine-Roma-DB`.Insegnante i
				   WHERE i.CodFisc_I = CF )  as is_valid_cf ;

#OLD
CREATE PROCEDURE `Piscine-Roma-DB`.`is_piscina_addetto_valid`(IN Nome_Piscina CHAR(16))
	SELECT EXISTS( SELECT Nome_P FROM `Piscine-Roma-DB`.Piscina p
				   WHERE p.Nome_P = Nome_Piscina )  as is_valid_nome_p ;




