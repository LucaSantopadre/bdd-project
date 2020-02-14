DELIMITER $$

CREATE TRIGGER `Piscine-Roma-DB`.check_insert_ingresso_libero_null BEFORE INSERT ON `Piscine-Roma-DB`.Persona
     FOR EACH ROW
     BEGIN
         IF (NEW.Nome_Piscina_P IS NULL 
         	AND NEW.Data_ingresso IS NOT NULL)
         	OR
         	(NEW.Nome_Piscina_P IS NOT NULL 
         	AND NEW.Data_ingresso IS NULL)
         	
         	THEN
         		
             SET NEW.Nome_Piscina_P = NULL;
             SET NEW.Data_ingresso = NULL;
             SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione data ingresso e nome piscina devono essere entrambi inseriti o entrambi nulli';
         END IF;
    END $$


CREATE TRIGGER `Piscine-Roma-DB`.check_update_ingresso_libero_null BEFORE UPDATE ON `Piscine-Roma-DB`.Persona
     FOR EACH ROW
     BEGIN
         IF (NEW.Nome_Piscina_P IS NULL 
            AND NEW.Data_ingresso IS NOT NULL)
            OR
            (NEW.Nome_Piscina_P IS NOT NULL 
            AND NEW.Data_ingresso IS NULL)
            
            THEN
                
             SET NEW.Nome_Piscina_P = NULL;
             SET NEW.Data_ingresso = NULL;
             SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione data ingresso e nome piscina devono essere entrambi inseriti o entrambi nulli';
         END IF;
    END $$


CREATE TRIGGER `Piscine-Roma-DB`.check_insert_piscina_tipo_null BEFORE INSERT ON `Piscine-Roma-DB`.Piscina
     FOR EACH ROW
     BEGIN
            IF ( NEW.Tipo = 0 AND (NEW.Da IS NOT NULL OR NEW.a IS NOT NULL) )
                THEN
                SET NEW.Da = NULL;
                SET NEW.a = NULL;
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione se la piscina non ha la vasca all\'aperto,non può esserci il periodo \'Da -> a\'. ';

            ELSEIF ( NEW.Tipo = 1 AND (NEW.Da IS NULL OR NEW.a IS NULL) )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione inserire il periodo \'Da -> a\'.';    
            END IF;
    END $$


CREATE TRIGGER `Piscine-Roma-DB`.check_update_piscina_tipo_null BEFORE UPDATE ON `Piscine-Roma-DB`.Piscina
     FOR EACH ROW
     BEGIN
            IF ( NEW.Tipo = 0 AND (NEW.Da IS NOT NULL OR NEW.a IS NOT NULL) )
                THEN
                SET NEW.Da = NULL;
                SET NEW.a = NULL;
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione se la piscina non ha la vasca all\'aperto,non può esserci il periodo \'Da -> a\'. ';

            ELSEIF ( NEW.Tipo = 1 AND (NEW.Da IS NULL OR NEW.a IS NULL) )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione inserire il periodo \'Da -> a\'.';    
            END IF;
    END $$



CREATE TRIGGER `Piscine-Roma-DB`.check_insert_partecipanti_corso BEFORE INSERT ON `Piscine-Roma-DB`.Corso
     FOR EACH ROW
     BEGIN
            IF ( NEW.Min > NEW.Max )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione inserire valido range partecipanti '; 
            END IF;
    END $$

CREATE TRIGGER `Piscine-Roma-DB`.check_update_partecipanti_corso BEFORE UPDATE ON `Piscine-Roma-DB`.Corso
     FOR EACH ROW
     BEGIN
            IF ( NEW.Min > NEW.Max )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione inserire valido range partecipanti '; 
            END IF;
    END $$

CREATE TRIGGER `Piscine-Roma-DB`.check_insert_ora_lezione BEFORE INSERT ON `Piscine-Roma-DB`.Lezione
     FOR EACH ROW
     BEGIN
            IF ( NEW.Ora_dalle > NEW.Ora_alle )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione inserire valido range per orario lezione '; 
            END IF;
    END $$

CREATE TRIGGER `Piscine-Roma-DB`.check_update_ora_lezione BEFORE UPDATE ON `Piscine-Roma-DB`.Lezione
     FOR EACH ROW
     BEGIN
            IF ( NEW.Ora_dalle > NEW.Ora_alle )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione inserire valido range per orario lezione '; 
            END IF;
    END $$



CREATE TRIGGER `Piscine-Roma-DB`.check_insert_date_rotazione BEFORE INSERT ON `Piscine-Roma-DB`.Rotazione
     FOR EACH ROW
     BEGIN
            IF ( 
                SELECT EXISTS(
                    SELECT * 
                    FROM Rotazione
                    WHERE NEW.CodFiscale_Insegnante = Rotazione.CodFiscale_Insegnante
                        AND(
                            (NEW.Data_inizio >= Rotazione.Data_inizio
                            AND NEW.Data_inizio <= Rotazione.Data_fine 
                            )
                            OR
                            (NEW.Data_fine >= Rotazione.Data_inizio
                            AND NEW.Data_fine <= Rotazione.Data_fine 
                            )
                            OR
                            (NEW.Data_inizio < Rotazione.Data_inizio
                            AND NEW.Data_fine > Rotazione.Data_fine 
                            )
                        )
                )
            )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione esiste già una rotazione assegnata al periodo scelto per questo insegnante'; 
            END IF;

            IF ( NEW.Data_inizio > NEW.Data_fine )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione la data di inizio non può essere successiva alla data di fine. '; 
            END IF;
    END $$


CREATE TRIGGER `Piscine-Roma-DB`.check_update_date_rotazione BEFORE UPDATE ON `Piscine-Roma-DB`.Rotazione
     FOR EACH ROW
     BEGIN
            IF ( 
                SELECT EXISTS(
                    SELECT * 
                    FROM Rotazione
                    WHERE NEW.CodFiscale_Insegnante = Rotazione.CodFiscale_Insegnante
                        AND(
                            (NEW.Data_inizio >= Rotazione.Data_inizio
                            AND NEW.Data_inizio <= Rotazione.Data_fine 
                            )
                            OR
                            (NEW.Data_fine >= Rotazione.Data_inizio
                            AND NEW.Data_fine <= Rotazione.Data_fine 
                            )
                            OR
                            (NEW.Data_inizio < Rotazione.Data_inizio
                            AND NEW.Data_fine > Rotazione.Data_fine 
                            )
                        )
                )
            )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione esiste già una rotazione assegnata al periodo scelto per questo insegnante'; 
            END IF;

            IF ( NEW.Data_inizio > NEW.Data_fine )
                THEN
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione la data di inizio non può essere successiva alla data di fine. '; 
            END IF;

    END $$


CREATE TRIGGER `Piscine-Roma-DB`.check_insert_piscina_addetto_segreteria_null BEFORE INSERT ON `Piscine-Roma-DB`.Utenti
     FOR EACH ROW
     BEGIN
            IF ( NEW.ruolo = 'addetto_segreteria' AND NEW.piscina IS NULL  )
                THEN
                SET NEW.ruolo = NULL;
                SET NEW.piscina = NULL;
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione il nome della piscina per utente addetto_segreteria è obbligatoria';
            END IF;
    END $$

CREATE TRIGGER `Piscine-Roma-DB`.check_update_piscina_addetto_segreteria_null BEFORE UPDATE ON `Piscine-Roma-DB`.Utenti
     FOR EACH ROW
     BEGIN
            IF ( NEW.ruolo = 'addetto_segreteria' AND NEW.piscina IS NULL  )
                THEN
                SET NEW.ruolo = NULL;
                SET NEW.piscina = NULL;
                SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Attenzione il nome della piscina per utente addetto_segreteria è obbligatoria';
            END IF;
    END $$



DELIMITER;

