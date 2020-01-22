########### INSEGNANTE #############

CREATE USER 'insegnante'@'localhost' IDENTIFIED BY 'insegnante123';
GRANT EXECUTE ON PROCEDURE  `temp-test`.report_insegnante TO 'insegnante'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.is_CF_insegnante_valid TO 'insegnante'@'localhost';
FLUSH PRIVILEGES;

#SHOW GRANTS FOR 'user_test'@'localhost';


########### ADDETTO SEGRETERIA #############
CREATE USER 'addetto_segreteria'@'localhost' IDENTIFIED BY 'asegreteria123';

