ALTER TABLE `temp-test`.Corso ADD CONSTRAINT Corso_FK FOREIGN KEY (Nome_Piscina) REFERENCES `temp-test`.Piscina(Nome_P);

ALTER TABLE `temp-test`.Lezione ADD CONSTRAINT Lezione_FK FOREIGN KEY (Nome_Corso,Nome_Piscina_Corso) REFERENCES `temp-test`.Corso(Nome_C,Nome_Piscina);

ALTER TABLE `temp-test`.Rotazione ADD CONSTRAINT Rotazione_FK FOREIGN KEY (Nome_Piscina_R) REFERENCES `temp-test`.Piscina(Nome_P);

ALTER TABLE `temp-test`.Rotazione ADD CONSTRAINT Rotazione_FK_1 FOREIGN KEY (CodFiscale_Insegnante) REFERENCES `temp-test`.Insegnante(CodFisc_I);

ALTER TABLE `temp-test`.Insegnante_Ha_Qualifica ADD CONSTRAINT Insegnante_Ha_Qualifica_FK FOREIGN KEY (CodFisc_Insegnante) REFERENCES `temp-test`.Insegnante(CodFisc_I);

ALTER TABLE `temp-test`.Insegnante_Ha_Qualifica ADD CONSTRAINT Insegnante_Ha_Qualifica_FK_1 FOREIGN KEY (Nome_Qualifica) REFERENCES `temp-test`.Qualifica(Nome_Q);

ALTER TABLE `temp-test`.Persona ADD CONSTRAINT Persona_FK FOREIGN KEY (Nome_Piscina_P) REFERENCES `temp-test`.Piscina(Nome_P);

ALTER TABLE `temp-test`.Contatti ADD CONSTRAINT Contatti_FK FOREIGN KEY (Codfisc_Persona_P) REFERENCES `temp-test`.Persona(CodFisc_Persona);

ALTER TABLE `temp-test`.Iscritto_Corsi ADD CONSTRAINT Iscritto_Corsi_FK FOREIGN KEY (CodFisc_Persona_IC) REFERENCES `temp-test`.Persona(CodFisc_Persona);

ALTER TABLE `temp-test`.Iscrizione ADD CONSTRAINT Iscrizione_FK FOREIGN KEY (CodFisc_Persona_IC_IS) REFERENCES `temp-test`.Iscritto_Corsi(CodFisc_Persona_IC);

ALTER TABLE `temp-test`.Iscrizione ADD CONSTRAINT Iscrizione_FK_1 FOREIGN KEY (Nome_Corso_IS,Nome_Piscina_Corso_IS) REFERENCES `temp-test`.Corso(Nome_C,Nome_Piscina);

