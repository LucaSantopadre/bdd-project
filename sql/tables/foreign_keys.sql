ALTER TABLE `Piscine-Roma-DB`.Corso ADD CONSTRAINT Corso_FK FOREIGN KEY (Nome_Piscina) REFERENCES `Piscine-Roma-DB`.Piscina(Nome_P)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Lezione ADD CONSTRAINT Lezione_FK FOREIGN KEY (Nome_Corso,Nome_Piscina_Corso) REFERENCES `Piscine-Roma-DB`.Corso(Nome_C,Nome_Piscina) 
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Rotazione ADD CONSTRAINT Rotazione_FK FOREIGN KEY (Nome_Piscina_R) REFERENCES `Piscine-Roma-DB`.Piscina(Nome_P)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Rotazione ADD CONSTRAINT Rotazione_FK_1 FOREIGN KEY (CodFiscale_Insegnante) REFERENCES `Piscine-Roma-DB`.Insegnante(CodFisc_I)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Insegnante_Ha_Qualifica ADD CONSTRAINT Insegnante_Ha_Qualifica_FK FOREIGN KEY (CodFisc_Insegnante) REFERENCES `Piscine-Roma-DB`.Insegnante(CodFisc_I)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Insegnante_Ha_Qualifica ADD CONSTRAINT Insegnante_Ha_Qualifica_FK_1 FOREIGN KEY (Nome_Qualifica) REFERENCES `Piscine-Roma-DB`.Qualifica(Nome_Q)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Persona ADD CONSTRAINT Persona_FK FOREIGN KEY (Nome_Piscina_P) REFERENCES `Piscine-Roma-DB`.Piscina(Nome_P)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Contatti ADD CONSTRAINT Contatti_FK FOREIGN KEY (Codfisc_Persona_P) REFERENCES `Piscine-Roma-DB`.Persona(CodFisc_Persona)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Iscritto_Corsi ADD CONSTRAINT Iscritto_Corsi_FK FOREIGN KEY (CodFisc_Persona_IC) REFERENCES `Piscine-Roma-DB`.Persona(CodFisc_Persona)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Iscrizione ADD CONSTRAINT Iscrizione_FK FOREIGN KEY (CodFisc_Persona_IC_IS) REFERENCES `Piscine-Roma-DB`.Iscritto_Corsi(CodFisc_Persona_IC)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Iscrizione ADD CONSTRAINT Iscrizione_FK_1 FOREIGN KEY (Nome_Corso_IS,Nome_Piscina_Corso_IS) REFERENCES `Piscine-Roma-DB`.Corso(Nome_C,Nome_Piscina)
ON DELETE CASCADE ON UPDATE CASCADE;

