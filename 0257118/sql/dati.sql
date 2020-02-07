INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Piscina Delle Rose","viale America, 20","0592-193147","Sara De Simone","1","Maggio","Settembre");
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("AquaTibur","via del frantoio, 8","0626-133997","Erika De Simone","0",NULL,NULL);
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Octopus Acquatic Club","via della Tenuta di Torrenova, 128","0761-239856","Giovanni Cattaneo","0",NULL,NULL);
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Olimpia 1","via Giuseppe Messina, 41","0328-876266","Dario Morelli","1","Giugno","Agosto");
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Crawl 2000","via del Gran Paradiso, 93","0974-862708","Nicolò Valente","0",NULL,NULL);
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Delta","via mazzantini, 15","0614-651436","Irene Battaglia","0",NULL,NULL);
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Juventus Nuoto","via bravetta, 539","0882-180032","Salvatore Sorrentino","0",NULL,NULL);
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Roma Uno","largo Ascianghi, 4","0671-113567","Christian Fusco","1","Giugno","Settembre");
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("CSI Roma Est","via montona, 17","0558-539154","Giorgia Monti","0",NULL,NULL);
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Azzurra","via manduria, 21","0955-073831","Jessica Pace","1","Maggio","Agosto");
INSERT INTO `Piscine-Roma-DB`.`Piscina` (`Nome_P`,`Indirizzo_P`,`Telefono_P`,`Responsabile`,`Tipo`,`Da`,`a`) VALUES ("Roma 12","via dei pini, 1","0179-387008","Michele Marra","0",NULL,NULL);

INSERT INTO `Piscine-Roma-DB`.Corso (Nome_C,Nome_Piscina,Costo,Max,Min) VALUES 
('acquagym','AquaTibur',55.00,10,5)
,('acquagym','Azzurra',50.00,15,8)
,('acquagym','Crawl 2000',50.00,10,5)
,('acquagym','CSI Roma Est',65.00,15,5)
,('acquagym','Juventus Nuoto',40.00,15,5)
,('acquagym','Octopus Acquatic Club',55.00,10,5)
,('acquagym','Piscina Delle Rose',55.00,8,4)
,('acquagym','Roma 12',50.00,8,5)
,('acquagym','Roma Uno',45.00,8,4)
,('dorso','AquaTibur',40.00,10,3)
;
INSERT INTO `Piscine-Roma-DB`.Corso (Nome_C,Nome_Piscina,Costo,Max,Min) VALUES 
('dorso','Azzurra',50.00,8,4)
,('dorso','Crawl 2000',35.00,15,5)
,('dorso','Delta',35.00,5,2)
,('dorso','Octopus Acquatic Club',40.00,10,3)
,('dorso','Olimpia 1',45.00,8,2)
,('dorso','Roma 12',30.00,5,2)
,('hydrobike','Azzurra',150.00,5,4)
,('hydrobike','Juventus Nuoto',65.00,8,5)
,('hydrobike','Roma Uno',60.00,5,5)
,('nuoto neonatale','Crawl 2000',35.00,4,1)
;
INSERT INTO `Piscine-Roma-DB`.Corso (Nome_C,Nome_Piscina,Costo,Max,Min) VALUES 
('pallanuoto','AquaTibur',150.00,14,7)
,('pallanuoto','CSI Roma Est',100.00,10,5)
,('pallanuoto','Olimpia 1',150.00,14,7)
,('pallanuoto','Piscina Delle Rose',90.00,14,7)
,('pallanuoto','Roma Uno',80.00,15,7)
,('rana','AquaTibur',40.00,10,3)
,('rana','Crawl 2000',40.00,15,5)
,('rana','Octopus Acquatic Club',40.00,10,3)
,('rana','Roma 12',30.00,5,2)
,('sincronizzato','AquaTibur',150.00,5,4)
;
INSERT INTO `Piscine-Roma-DB`.Corso (Nome_C,Nome_Piscina,Costo,Max,Min) VALUES 
('sincronizzato','Piscina Delle Rose',80.00,5,4)
,('stile libero','AquaTibur',30.00,10,3)
,('stile libero','Azzurra',40.00,8,4)
,('stile libero','Crawl 2000',35.00,15,5)
,('stile libero','Delta',30.00,10,3)
,('stile libero','Octopus Acquatic Club',40.00,10,3)
,('stile libero','Olimpia 1',35.00,8,2)
,('stile libero','Roma 12',30.00,5,2)
,('stile libero','Roma Uno',55.00,10,6)
,('tuffi','AquaTibur',200.00,1,1)
;
INSERT INTO `Piscine-Roma-DB`.Corso (Nome_C,Nome_Piscina,Costo,Max,Min) VALUES 
('tuffi','Delta',95.00,4,2)
,('tuffi','Piscina Delle Rose',80.00,4,2)
;

INSERT INTO `Piscine-Roma-DB`.Lezione (Giorno_sett,Ora_dalle,Ora_alle,Nome_Corso,Nome_Piscina_Corso) VALUES 
(2,'10:00:00','11:00:00','acquagym','AquaTibur')
,(2,'14:00:00','16:00:00','acquagym','AquaTibur')
,(4,'17:00:00','19:00:00','acquagym','AquaTibur')
,(3,'08:00:00','10:00:00','acquagym','Azzurra')
,(5,'18:00:00','20:00:00','acquagym','Azzurra')
,(4,'15:00:00','16:00:00','acquagym','Crawl 2000')
,(6,'12:00:00','13:00:00','acquagym','Crawl 2000')
,(7,'11:00:00','13:00:00','acquagym','Crawl 2000')
,(2,'14:00:00','16:00:00','acquagym','CSI Roma Est')
,(2,'20:00:00','21:00:00','acquagym','CSI Roma Est')
;
INSERT INTO `Piscine-Roma-DB`.Lezione (Giorno_sett,Ora_dalle,Ora_alle,Nome_Corso,Nome_Piscina_Corso) VALUES 
(5,'16:00:00','17:00:00','acquagym','CSI Roma Est')
,(3,'11:00:00','12:00:00','acquagym','Juventus Nuoto')
,(4,'15:00:00','16:00:00','acquagym','Juventus Nuoto')
,(5,'18:00:00','19:00:00','acquagym','Juventus Nuoto')
,(2,'10:00:00','11:00:00','acquagym','Octopus Acquatic Club')
,(4,'18:00:00','20:00:00','acquagym','Octopus Acquatic Club')
,(3,'15:00:00','17:00:00','acquagym','Piscina Delle Rose')
,(6,'10:00:00','12:00:00','acquagym','Piscina Delle Rose')
,(2,'16:00:00','17:00:00','acquagym','Roma 12')
,(2,'20:00:00','21:00:00','acquagym','Roma 12')
;
INSERT INTO `Piscine-Roma-DB`.Lezione (Giorno_sett,Ora_dalle,Ora_alle,Nome_Corso,Nome_Piscina_Corso) VALUES 
(6,'18:00:00','19:00:00','acquagym','Roma 12')
,(2,'12:00:00','13:00:00','acquagym','Roma Uno')
,(3,'16:00:00','17:00:00','acquagym','Roma Uno')
,(7,'10:00:00','11:00:00','acquagym','Roma Uno')
,(2,'12:00:00','13:00:00','dorso','AquaTibur')
,(3,'10:00:00','11:00:00','dorso','AquaTibur')
,(2,'18:00:00','20:00:00','pallanuoto','AquaTibur')
,(6,'20:00:00','22:00:00','pallanuoto','AquaTibur')
,(5,'14:00:00','16:00:00','sincronizzato','AquaTibur')
,(6,'14:00:00','16:00:00','sincronizzato','AquaTibur')
;
INSERT INTO `Piscine-Roma-DB`.Lezione (Giorno_sett,Ora_dalle,Ora_alle,Nome_Corso,Nome_Piscina_Corso) VALUES 
(3,'15:00:00','17:00:00','stile libero','AquaTibur')
,(5,'10:00:00','12:00:00','stile libero','AquaTibur')
;


INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('AOHPPJ62P18J665T','Ap #530-4512 Nullam Avenue','Sara Franco','2019-02-24','Crawl 2000')
,('APFBSK84C89K742F','P.O. Box 351, 1981 Leo. Road','Vincenzo Ruggiero','2020-01-28','Crawl 2000')
,('APFERG35F48U254F','P.O. Box 265, 185 Rutrum Ave','Samuele Bruni','2019-11-24','Olimpia 1')
,('APLXTO83V31A695Q','865-2825 Pede, Road','Luigi Calabrese','2019-04-02','Delta')
,('AWCNED46N79H485Y','3505 Nisl. St.','Viola Silvestri','2019-08-20','Olimpia 1')
,('BCMVTD99E81V769T','Ap #115-6538 Arcu. Road','Mattia Ceccarelli','2018-12-03','Roma 12')
,('BEMJZF28C73G445W','308-9208 Natoque Rd.','Filippo Ruggeri','2018-07-16','Piscina Delle Rose')
,('BHEPWE78S83X958V','Ap #181-3461 Amet, Rd.','Sofia Pozzi',NULL,NULL)
,('BIVVPC82X53O492J','440-260 Dolor Street','Cristiano Lombardi','2019-01-18','Olimpia 1')
,('BVIXSR94H68T423J','7058 Quisque Avenue','Augusto Piazza',NULL,NULL)
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('BZPNQH41V29N288H','3923 Augue Ave','Irene Santini','2018-12-18','Roma 12')
,('CCBETP53Z92V992S','204-7599 Tincidunt Rd.','Emanuele Guerra','2018-01-20','Olimpia 1')
,('CLPPFK67Q43X994I','9682 Libero. St.','Stefania Longo','2018-07-01','AquaTibur')
,('CVFFGJ23O96R727K','Ap #748-5112 Ac Rd.','Mirko Caruso',NULL,NULL)
,('DBNCEN17G33O274R','Ap #287-2187 Consectetuer Av.','Jacopo Catalano','2019-03-02','Azzurra')
,('DJWKIH87G71J681X','P.O. Box 876, 5583 Lectus. Av.','Mirko Vitale','2020-01-28','Crawl 2000')
,('DTVFRK28H41E323E','629-7272 Arcu Rd.','Gaia Santini','2018-09-10','Piscina Delle Rose')
,('DZCNZU31G98V547Y','P.O. Box 625, 5426 Egestas Av.','Ilaria Silvestri','2019-02-03','AquaTibur')
,('EFHOWM88W52S685I','199 Nunc. St.','Davide Ricci','2020-01-15','Piscina Delle Rose')
,('ELWJCY27T39Y121W','P.O. Box 318, 3880 Felis Street','Cristian Amato','2019-09-05','Roma Uno')
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('ENVZBV11A74D638E','P.O. Box 532, 4138 Morbi Av.','Laura Lombardi',NULL,NULL)
,('ETESXL36F68I554T','Ap #220-9725 Sagittis. Ave','Simone Ferraro','2019-07-09','Roma Uno')
,('EUILXM17S59C346D','Ap #887-3020 A, Rd.','Stefano Mancini','2019-08-27','Octopus Acquatic Club')
,('FEVOLP39M29B984I','P.O. Box 317, 2844 Felis. Ave','Lorenzo Monaco','2018-02-18','Piscina Delle Rose')
,('FGNQBQ21H74Y112N','466-6403 Non St.','Alex Mariani','2018-07-19','Roma 12')
,('FKRURM97R96P714F','1447 Non Rd.','Giada Mazza','2018-06-12','Roma Uno')
,('FNYKRA94A84T312B','5147 Mauris. Road','Marta Mancini',NULL,NULL)
,('FRPJDA55E53L754V','Ap #990-6178 Pellentesque St.','Federica Milani','2018-03-17','CSI Roma Est')
,('FUBMUL51Y56M796U','Ap #466-7384 Metus Rd.','Jessica Vitali','2020-01-06','Octopus Acquatic Club')
,('FUHHGU63J93V624Q','Ap #969-6212 Elementum Av.','Camilla Giuliani','2018-08-11','Crawl 2000')
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('FVSCXW98F83B572R','3121 Aliquam St.','Manuela Sorrentino','2019-09-24','Azzurra')
,('FYUAYW29I96E672F','Ap #283-1313 Cras Road','Filippo Fiore','2018-05-06','CSI Roma Est')
,('GIHUBU53T52K291T','5029 Dictum St.','Jacopo Calabrese','2019-04-21','Delta')
,('GJHOPO67K52J454K','829-8842 Lorem, Ave','Augusto Pozzi','2019-11-24','Roma 12')
,('HDYJYD93L99U962B','Ap #822-1179 In Rd.','Marco Piccolo',NULL,NULL)
,('HFLYUA68B48O757J','Ap #131-554 Vitae, St.','Emanuele Fabbri','2019-11-16','Piscina Delle Rose')
,('HGMRWX83B16A252T','P.O. Box 568, 581 Sit Street','Dario Olivieri','2019-04-29','Olimpia 1')
,('HIWBYT94K48Z642M','P.O. Box 146, 5481 Dui. St.','Mirko Conti',NULL,NULL)
,('HOVVKI67I54O292X','Ap #133-4336 Mollis Av.','Erika Piccolo','2018-11-14','CSI Roma Est')
,('HVBNKW55R92J425A','582-207 Nascetur St.','Giulio Mariani','2019-02-27','Delta')
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('HXGVSN17V15J346D','1169 Tempus Avenue','Gianpaolo Conti',NULL,NULL)
,('HXGZMN37X43K484K','140-1748 Felis St.','Silvia Fusco',NULL,NULL)
,('IDOAUL69X82I963Y','Ap #756-190 Hendrerit St.','Samuel Monti','2018-11-07','Azzurra')
,('INNGZZ73T54M967N','P.O. Box 918, 7021 Rutrum Road','Elena Coppola','2018-06-22','Octopus Acquatic Club')
,('IVAGEV54J45K421Y','P.O. Box 541, 7223 Nam Ave','Giulia Carbone',NULL,NULL)
,('IXKFWJ54J38X341I','230-7429 Et, Street','Federica Conti','2019-03-27','Octopus Acquatic Club')
,('IXTUIY19O35Y472J','P.O. Box 470, 3974 Consectetuer Rd.','Cristiano Cavallo','2018-04-16','Azzurra')
,('IYDUWI39L66A253C','8340 Cras Rd.','Giuseppe Montanari',NULL,NULL)
,('JIATHY15U72F495B','894-7893 Lobortis Rd.','Veronica Palmieri','2018-11-04','Piscina Delle Rose')
,('JJRATK56U92O644K','P.O. Box 422, 579 Pede. Street','Gianni Conte','2019-03-14','Octopus Acquatic Club')
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('JNFZEI46L53H962L','Ap #402-5685 Vulputate, St.','Giada De Angelis',NULL,NULL)
,('JNQVIR21S86J866L','Ap #334-6753 Elementum, Avenue','Sofia Donati','2019-06-23','Roma 12')
,('JQAAQG74G31C959X','475-3102 Egestas Road','Aurora Mancini','2019-07-11','Juventus Nuoto')
,('JRBKMN51D23S875J','P.O. Box 919, 8386 Pharetra Av.','Samuel Rossetti',NULL,NULL)
,('JXEHJV64F82G136U','P.O. Box 677, 700 Orci. Street','Valerio Rinaldi','2019-10-16','CSI Roma Est')
,('KGPOYT36R58H886U','433-8670 Mauris Street','Matteo Marini',NULL,NULL)
,('KLXZSB19H59Q863I','Ap #938-9024 Sit Street','Gabriele Bellini','2018-12-10','Crawl 2000')
,('KPIESM18W54D778K','Ap #990-6632 Nunc Rd.','Marta Conti','2019-09-08','Olimpia 1')
,('LQDATV27F33W749V','444-1850 Lacus. St.','Daniele Agostini','2018-01-18','Roma 12')
,('LTUPYT21T52K518V','P.O. Box 168, 3499 Et Road','Margherita Sartori',NULL,NULL)
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('LXPPNS32M56U463F','Ap #828-3391 Ac Rd.','Irene Amato','2019-05-15','Piscina Delle Rose')
,('LYGTVF49G59H298G','P.O. Box 281, 122 Blandit. Rd.','Giovanni Grimaldi','2019-11-15','AquaTibur')
,('MDJKPJ26N79R392N','P.O. Box 920, 4733 Eu Avenue','Enrico Marchi',NULL,NULL)
,('MUGGKO16K16A261X','616-6951 Interdum. St.','Ilaria Ferri','2019-12-21','AquaTibur')
,('MXHUQJ32W81G431W','P.O. Box 846, 9898 Posuere Av.','Emanuele Lombardo','2019-07-11','Azzurra')
,('NCMMDE85I79F666K','622-5606 Sem. Avenue','Augusto Volpe','2019-05-03','Azzurra')
,('NFFJRG51G15X437V','Ap #829-7498 Mattis Avenue','Vanessa Fontana',NULL,NULL)
,('NJZGAK58I87I191T','679-2645 Est Av.','Sofia Ruggiero','2018-09-15','Crawl 2000')
,('NKDRMO58R74Z392N','Ap #860-6753 Posuere Av.','Christian Greco','2019-08-19','Octopus Acquatic Club')
,('NVMXTA37O62S522P','P.O. Box 586, 6796 Tellus Rd.','Ginevra Mariani','2019-09-20','Olimpia 1')
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('NYQEHL66L73E271C','Ap #140-5929 Non Rd.','Alex Orlando','2019-08-04','CSI Roma Est')
,('NZNGRZ32I73F841A','261-6630 Pede. St.','Christian Fiore','2019-02-27','Delta')
,('OJMPTX13P77B569K','7014 A Rd.','Chiara Gallo','2019-01-21','Roma 12')
,('OXNRHU44D81J895M','506-3453 Vel, St.','Christian Barbieri','2019-02-06','Crawl 2000')
,('OYHNUC61N78P638T','804-2931 Dui. Street','Emma Santini',NULL,NULL)
,('OYNSHY15I47R935V','5892 Fusce Rd.','Mario Bellini','2018-04-12','Roma 12')
,('PILNRI72V79D314V','Ap #459-1654 Quis Rd.','Jessica Rizzo','2018-03-22','Crawl 2000')
,('PRIFZK51G16A986H','Ap #183-6672 Morbi Avenue','Domenico Pagano','2018-01-16','Octopus Acquatic Club')
,('PVTGPR11B78E271H','P.O. Box 409, 1672 Libero Ave','Giuseppe Leone',NULL,NULL)
,('QDJDRR83O84P934V','Ap #881-4748 Mi Street','Debora Cattaneo','2018-03-26','Azzurra')
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('QIOOGS54E81S383X','Ap #577-3717 Feugiat Avenue','Alice Rinaldi',NULL,NULL)
,('QPWLCB96X48O615D','2689 Lorem Av.','Lisa Castelli','2019-03-30','Olimpia 1')
,('QTFKKI21J52G273U','5631 Elit, St.','Nicoletta Ceccarelli','2019-10-30','Olimpia 1')
,('QYTQUM39C98F652Y','5039 Sodales Av.','Gabriele Garofalo','2019-01-03','CSI Roma Est')
,('QZUQCQ82M52Y434Z','Ap #348-2909 Amet Avenue','Lorenzo Ferri','2018-09-29','Crawl 2000')
,('RCMOSJ89M27V386B','Ap #363-424 Proin Road','Emanuele Piazza',NULL,NULL)
,('RIFVVN57X88O323D','3595 Luctus Rd.','Davide Valentini','2019-08-02','Olimpia 1')
,('RIOABI86I63Q318L','1525 Aliquet Rd.','Gaia Farina','2019-08-16','Octopus Acquatic Club')
,('RJQSKK32O56V421N','P.O. Box 928, 5259 Scelerisque Ave','Erica Villa','2020-01-12','Piscina Delle Rose')
,('RLXSIC98X78X927M','3269 In Avenue','Giuseppe Rossetti','2019-12-16','Olimpia 1')
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('RVHQEQ13U82N947G','2911 Aliquet, St.','Matteo Aiello',NULL,NULL)
,('RYVCIV61Y83R329V','473-8749 Rutrum Ave','Mirko Grasso','2018-11-04','Roma Uno')
,('SKAVNG32D94B523Z','Ap #153-8833 A Avenue','Alessia Caputo','2019-12-16','CSI Roma Est')
,('SLXBBC34G73T957X','562-2172 Nibh. Ave','Matilde Greco','2018-12-07','Octopus Acquatic Club')
,('SOCGZI99P23F635O','P.O. Box 337, 6514 Arcu St.','Federico Rossetti','2018-06-07','Piscina Delle Rose')
,('SUCFSY44S46T328Q','320-3650 Lorem Avenue','Angelo Santoro','2019-08-11','Azzurra')
,('SXHYLN71P12I256G','1258 Nonummy Street','Cristina Costa',NULL,NULL)
,('TDDCAU61P52C191C','374-969 Vulputate Street','Giorgia Galli','2019-01-19','Olimpia 1')
,('TKIJBB37D75Z835R','1830 Ligula. Rd.','Giulietta Cattaneo','2019-08-06','Juventus Nuoto')
,('TLCOQP65G52I656M','458-2272 A Av.','Antonio Conti','2019-03-05','Roma 12')
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('TTBEAK47H91N897X','P.O. Box 964, 9626 Ut, St.','Sara Lombardi','2018-11-04','CSI Roma Est')
,('TVXQJA58K47Y764C','Ap #531-2481 Pretium Avenue','Claudia Leone','2019-12-26','Roma 12')
,('UELVJZ49S54V944Q','9232 Lobortis Rd.','Roberta Cattaneo','2018-05-03','Azzurra')
,('UHCSEW63R41H139Y','3031 Pellentesque St.','Tommaso Basile',NULL,NULL)
,('UNHIZK73P22S187I','817-3301 Elit Avenue','Beatrice Ceccarelli','2018-04-22','Crawl 2000')
,('UOBLNT11E74M412Z','P.O. Box 877, 9992 Lacinia. Road','Elena Valente','2019-11-23','Piscina Delle Rose')
,('URDZRZ88C28Q887F','455-2541 Mi St.','Roberta Fabbri','2018-02-13','Roma Uno')
,('UZZKVE86J29O861N','P.O. Box 898, 5753 Curabitur Street','Vincenzo Rossi','2018-10-10','Roma Uno')
,('VYXBHD38Q59Q142D','Ap #462-3136 Tristique Ave','Luigi Donati','2019-10-20','Olimpia 1')
,('WCFPHP74E53S828J','7065 Sit Rd.','Matilde Ruggeri',NULL,NULL)
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('WDJBWH36C82F319S','P.O. Box 314, 3868 Leo. St.','Antonio Arena','2018-09-17','Juventus Nuoto')
,('WLIGYV23L83Z159K','960-548 Dictum. St.','Alberto Caruso','2019-07-04','Delta')
,('WPQVWE88O77D398F','665-4118 Vulputate St.','Irene Volpe','2019-07-31','Juventus Nuoto')
,('WQSYVA66A76X719I','P.O. Box 838, 9989 Sociis Av.','Alessia Martini',NULL,NULL)
,('XAKYSD32T75P685Z','P.O. Box 819, 2677 Sodales Av.','Filippo Baldi','2019-06-17','Juventus Nuoto')
,('XEFSNP43O47J957Z','807-4382 Sem. Road','Giovanni Mariani','2019-07-24','Roma 12')
,('XIQJLG42Y74T777E','Ap #687-6121 Ullamcorper. Avenue','Erica Gentile','2018-08-08','Piscina Delle Rose')
,('XOJBYB51T51G998E','Ap #335-5442 Congue Avenue','Alice Ferri','2019-03-11','CSI Roma Est')
,('XVGJMZ21J52I896U','P.O. Box 588, 2701 Ullamcorper Rd.','Samuel Proietti','2018-12-03','Azzurra')
,('YAVMON79U14D859T','Ap #261-5205 Lectus. Rd.','Francesco Volpe',NULL,NULL)
;
INSERT INTO `Piscine-Roma-DB`.Persona (CodFisc_Persona,Indirizzo_Persona,Nome_Persona,Data_ingresso,Nome_Piscina_P) VALUES 
('YZAAMP76B23U272I','666-6530 Ipsum St.','Monica Cavallo','2018-10-09','AquaTibur')
,('YZZPYW46B85J423T','7831 Consequat Av.','Giorgia Pozzi','2018-10-16','AquaTibur')
,('ZAQSBI56T19X653W','Ap #164-591 Nulla Ave','Claudio Ferraro','2019-01-31','Roma Uno')
,('ZBYXYU86R97F573U','P.O. Box 314, 9809 Id, Road','Salvatore Martini',NULL,NULL)
,('ZCAGDG93X13P578K','234-8583 Tristique Road','Camilla Mele',NULL,NULL)
,('ZFWHZG21K62Z878H','678-4626 Odio Road','Marcello Monti','2018-10-16','Juventus Nuoto')
,('ZJTGCS68E58C366M','421-5720 Amet Rd.','Valeria Ruggeri','2019-07-12','CSI Roma Est')
,('ZSEBUP21K37O194I','500-3847 Mauris Road','Roberta Volpe','2019-01-27','Azzurra')
,('ZUXXME35L42Z588H','P.O. Box 252, 8856 Cursus St.','Dario Lombardo',NULL,NULL)
,('ZZEZJQ23O31R997S','8334 Malesuada Rd.','Chiara Baldi','2018-06-12','Octopus Acquatic Club')
;


INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("IVAGEV54J45K421Y","ante@ettristiquepellentesque.net","377-3480848","0344-843707");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("JRBKMN51D23S875J","fringilla.porttitor@metus.ca","398-2947253","0326-168030");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("NFFJRG51G15X437V","diam.lorem.auctor@ametluctus.co.uk","388-1591651","0878-514683");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("OYHNUC61N78P638T","Donec@Donec.co.uk","343-5588814","0251-225369");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("QPWLCB96X48O615D","Aliquam.gravida.mauris@Aliquamornare.net","372-9419490","0252-710981");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("LYGTVF49G59H298G","euismod.est.arcu@venenatisvel.com","394-6473894","0291-402167");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("IXTUIY19O35Y472J","vitae@rutrum.org","342-8309620","0389-138040");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("GJHOPO67K52J454K","id.ante.Nunc@Nuncullamcorper.com","335-9583196","0766-668956");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("LXPPNS32M56U463F","Ut.semper@condimentumDonecat.ca","359-4136641","0382-801899");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("OYNSHY15I47R935V","nisi.nibh@ametrisus.com","335-3094095","0814-859572");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("KPIESM18W54D778K","ipsum@nisimagna.co.uk","383-2827480","0729-228027");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("MDJKPJ26N79R392N","imperdiet.ornare@eueratsemper.ca","325-5599679","0518-189359");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("APLXTO83V31A695Q","mollis.dui.in@odio.com","329-0116606","0239-874667");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("DJWKIH87G71J681X","purus.accumsan@ornare.net","384-6032065","0759-955090");
INSERT INTO `Piscine-Roma-DB`.`Contatti` (`CodFisc_Persona_P`,`Mail_Persona`,`Cellulare_Persona`,`Telefono_Persona`) VALUES ("BEMJZF28C73G445W","aliquet.metus@tempusmauriserat.edu","366-6473004","0185-271430");


INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("BHEPWE78S83X958V","Roberto Piazza","2019-03-04","1971-01-29");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("BVIXSR94H68T423J","Enrico Ferrara","2019-07-29","1987-07-08");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("CVFFGJ23O96R727K","Veronica Antonelli","2019-01-25","1983-08-05");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("ENVZBV11A74D638E","Stefano Mazza","2019-09-19","1969-05-10");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("FNYKRA94A84T312B","Noemi Mariani","2019-10-09","1963-07-21");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("HDYJYD93L99U962B","Alice Aiello","2019-03-30","1976-08-06");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("HIWBYT94K48Z642M","Elena Neri","2019-07-14","1989-11-12");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("HXGVSN17V15J346D","Gianni Bianco","2019-06-03","1977-04-21");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("HXGZMN37X43K484K","Alberto Valentini","2019-04-03","1985-10-23");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("IVAGEV54J45K421Y","Simona Costantini","2019-04-05","1996-10-12");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("IYDUWI39L66A253C","Veronica Proietti","2019-12-05","1969-04-30");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("JNFZEI46L53H962L","Angelo Calabrese","2019-04-08","1985-05-22");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("JRBKMN51D23S875J","Giulietta Mele","2019-05-04","1981-09-17");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("KGPOYT36R58H886U","Noemi Garofalo","2019-02-15","2000-11-29");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("LTUPYT21T52K518V","Arianna Costantini","2019-10-12","1992-01-21");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("MDJKPJ26N79R392N","Alessio Giorgi","2019-03-22","1989-07-18");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("NFFJRG51G15X437V","Vittoria Sorrentino","2019-03-15","1973-11-05");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("OYHNUC61N78P638T","Davide Rossetti","2019-09-12","1970-08-06");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("PVTGPR11B78E271H","Cristina Bruno","2019-09-13","1983-06-29");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("QIOOGS54E81S383X","Luigi Conte","2019-07-28","1960-01-23");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("RCMOSJ89M27V386B","Samuele Caruso","2019-08-29","1962-05-09");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("RVHQEQ13U82N947G","Daniele Ricci","2019-08-22","1963-02-19");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("SXHYLN71P12I256G","Vincenzo Martinelli","2019-04-16","1986-06-15");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("UHCSEW63R41H139Y","Emma Pagano","2019-04-13","1989-10-27");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("WCFPHP74E53S828J","Claudia Orlando","2019-02-05","1962-11-30");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("WQSYVA66A76X719I","Giorgia Marra","2019-04-03","1976-02-08");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("YAVMON79U14D859T","Matteo Rinaldi","2019-11-17","1971-12-15");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("ZBYXYU86R97F573U","Luigi Bellini","2019-10-07","1983-09-01");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("ZCAGDG93X13P578K","Valerio Cirillo","2019-03-15","1966-11-10");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("ZUXXME35L42Z588H","Jessica Monti","2019-03-31","1973-12-26");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("APFBSK84C89K742F","Alberto Bellini","2019-06-01","1992-10-24");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("DJWKIH87G71J681X","Giulio Fumagalli","2019-10-09","1971-12-18");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("EFHOWM88W52S685I","Valerio Calabrese","2019-06-08","1985-08-02");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("RJQSKK32O56V421N","Silvia Pellegrini","2019-09-26","1995-02-10");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("FUBMUL51Y56M796U","Giorgia Ferrante","2019-09-03","1964-03-03");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("TVXQJA58K47Y764C","Federico Poli","2019-01-19","1972-10-24");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("MUGGKO16K16A261X","Mirko Riva","2019-12-02","1992-07-25");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("RLXSIC98X78X927M","Fabio Ferrara","2019-01-16","1961-04-26");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("SKAVNG32D94B523Z","Silvia Milani","2019-02-11","1996-02-02");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("APFERG35F48U254F","Francesca Grassi","2019-12-31","1976-04-14");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("GJHOPO67K52J454K","Sara Ferretti","2019-11-24","2000-02-07");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("UOBLNT11E74M412Z","Simona Mancini","2019-07-06","1988-10-23");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("HFLYUA68B48O757J","Elena Palmieri","2019-10-24","1973-03-22");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("BIVVPC82X53O492J","Christian Romano","2019-12-23","1978-04-27");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("QTFKKI21J52G273U","Gianluca Morelli","2019-10-28","1976-10-24");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("VYXBHD38Q59Q142D","Alessio Greco","2019-06-11","1977-07-26");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("JXEHJV64F82G136U","Nicoletta Fabbri","2019-12-14","1976-07-22");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("FVSCXW98F83B572R","Sara Ferrara","2019-06-08","1960-02-22");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("NVMXTA37O62S522P","Domenico Conti","2019-02-26","1993-09-12");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("KPIESM18W54D778K","Samuele Serra","2019-03-09","1983-06-20");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("ELWJCY27T39Y121W","Cristian Vitali","2019-06-21","1996-01-31");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("KLXZSB19H59Q863I","Stefania Proietti","2019-06-03","1962-06-04");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("HOVVKI67I54O292X","Giulio Sorrentino","2019-09-10","1991-11-22");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("IXTUIY19O35Y472J","Irene Costa","2019-07-11","1960-06-14");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("FEVOLP39M29B984I","Giacomo Ruggeri","2019-02-05","1997-01-03");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("CCBETP53Z92V992S","Alessia Piras","2019-07-12","1990-06-19");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("TDDCAU61P52C191C","Martina Caruso","2019-09-25","1986-01-10");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("CLPPFK67Q43X994I","Monica Fontana","2019-07-12","1962-04-28");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("SOCGZI99P23F635O","Gianpaolo Romano","2019-11-04","1982-12-05");
INSERT INTO `Piscine-Roma-DB`.`Iscritto_Corsi` (`CodFisc_Persona_IC`,`Medico`,`Data_certificato`,`Data_nascita`) VALUES ("PILNRI72V79D314V","Vanessa Santoro","2019-12-29","1972-05-29");


INSERT INTO `Piscine-Roma-DB`.Iscrizione (CodFisc_Persona_IC_IS,Nome_Corso_IS,Nome_Piscina_Corso_IS) VALUES 
('APFBSK84C89K742F','acquagym','AquaTibur')
,('BVIXSR94H68T423J','acquagym','AquaTibur')
,('HOVVKI67I54O292X','acquagym','CSI Roma Est')
,('JNFZEI46L53H962L','acquagym','CSI Roma Est')
,('APFERG35F48U254F','acquagym','Piscina Delle Rose')
,('CVFFGJ23O96R727K','acquagym','Roma 12')
,('FUBMUL51Y56M796U','dorso','AquaTibur')
,('BIVVPC82X53O492J','dorso','Azzurra')
,('DJWKIH87G71J681X','dorso','Octopus Acquatic Club')
,('SXHYLN71P12I256G','dorso','Olimpia 1')
;
INSERT INTO `Piscine-Roma-DB`.Iscrizione (CodFisc_Persona_IC_IS,Nome_Corso_IS,Nome_Piscina_Corso_IS) VALUES 
('CVFFGJ23O96R727K','dorso','Roma 12')
,('BIVVPC82X53O492J','hydrobike','Azzurra')
,('FEVOLP39M29B984I','hydrobike','Juventus Nuoto')
,('GJHOPO67K52J454K','hydrobike','Roma Uno')
,('ELWJCY27T39Y121W','nuoto neonatale','Crawl 2000')
,('APFBSK84C89K742F','pallanuoto','AquaTibur')
,('CLPPFK67Q43X994I','pallanuoto','AquaTibur')
,('HOVVKI67I54O292X','pallanuoto','CSI Roma Est')
,('BHEPWE78S83X958V','pallanuoto','Olimpia 1')
,('PVTGPR11B78E271H','pallanuoto','Roma Uno')
;
INSERT INTO `Piscine-Roma-DB`.Iscrizione (CodFisc_Persona_IC_IS,Nome_Corso_IS,Nome_Piscina_Corso_IS) VALUES 
('CCBETP53Z92V992S','rana','Crawl 2000')
,('NVMXTA37O62S522P','rana','Octopus Acquatic Club')
,('FUBMUL51Y56M796U','sincronizzato','AquaTibur')
,('APFERG35F48U254F','sincronizzato','Piscina Delle Rose')
,('APFBSK84C89K742F','stile libero','AquaTibur')
,('IXTUIY19O35Y472J','stile libero','Crawl 2000')
,('ELWJCY27T39Y121W','stile libero','Delta')
,('ZBYXYU86R97F573U','stile libero','Roma Uno')
,('BVIXSR94H68T423J','tuffi','AquaTibur')
,('JRBKMN51D23S875J','tuffi','AquaTibur')
;
INSERT INTO `Piscine-Roma-DB`.Iscrizione (CodFisc_Persona_IC_IS,Nome_Corso_IS,Nome_Piscina_Corso_IS) VALUES 
('GJHOPO67K52J454K','tuffi','Piscina Delle Rose')
;

INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("WOPLZK22V67I829S","Lucia Martinelli","0956-465015","396-6677072");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("OLFMMR86E63X476P","Alessandro Vitale","0565-209747","366-8088379");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("TYPXUV58S87U782H","Francesco Caruso","0921-289985","342-1022351");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("QKVIFD71S16X358B","Emanuele Cattaneo","0881-977695","321-2023994");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("JZREDD42E18K447E","Debora Piazza","0971-412867","326-6383968");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("FHTRVE32U94E696P","Martina Ceccarelli","0552-277737","311-1425628");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("INDACE69M79X514T","Gianni Grimaldi","0273-603212","393-6044591");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("HONYJD31V17I559Y","Daniele Zanetti","0397-379790","385-9007661");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("ZUGQCE81X85U678V","Vanessa Benedetti","0654-022419","352-1505168");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("DCNAUY95X57Q238F","Valeria Villa","0332-605274","347-8823046");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("FTUQFA32L41M478L","Christian Martinelli","0547-731151","345-3390117");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("QZIXUH81G76S742N","Manuel Pastore","0858-052433","315-3165929");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("BEPESP91N32S144A","Emanuele Ceccarelli","0666-300655","311-5005494");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("QMBSMZ85G62B462M","Camilla Guidi","0526-404923","372-9874645");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("VELIJK79Y69J435L","Stefano Valentini","0843-556881","397-0532374");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("WXAXML68Q84K615X","Nicole Valentini","0882-780727","317-3654280");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("UEAHQA52Z35T869C","Federico Martino","0196-547662","389-8120988");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("HHCFTK35D84V552H","Giulia Testa","0781-567720","371-3933022");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("REXHUV69U11F915M","Diego Gallo","0718-559645","322-3108377");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("GXNPMP69Z93N455R","Francesca Villa","0188-664189","377-0140461");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("UAKFFL84E66A692X","Leonardo Bellini","0911-285208","392-1213534");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("DJGWFN63B48T835T","Beatrice Pellegrino","0355-915270","377-6682103");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("AUJZXD85R36S337X","Marta Ferrari","0178-430064","356-0592975");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("ABXIOT95T83K775C","Stefania Rizzo","0999-911187","314-7642994");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("GADEYD81U12F744T","Vittoria Riva","0261-036358","397-8487403");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("EBMQIM21F91I343R","Lucia Guidi","0479-506322","350-7532364");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("ENXXWF33P88K189U","Francesco Marino","0612-210527","339-2787783");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("FXYYXX43R81F461R","Angelo Caruso","0127-357871","379-6513166");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("KDAYSP74O24A626G","Ilaria Santini","0891-147523","331-8935994");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("LXPDAP14F89A931V","Marco Martinelli","0524-230707","352-1243544");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("BCBKNH16I57M188A","Maria Leone","0789-600823","386-1251899");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("QIBKSS16L51T413V","Lorenzo Marchetti","0942-241767","368-2583945");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("DTQNHJ81W46V681O","Edoardo Lombardo","0353-519442","328-1095845");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("IFJHTX14P27M254U","Giovanni Marchi","0119-611206","369-5723516");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("KBDXSO41O71T671C","Sara Villani","0221-678503","370-1073449");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("URKLXT94I87T744M","Luigi Morelli","0723-790104","312-2962987");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("QUECRN86W55X891L","Tommaso Pagano","0763-275560","356-6143371");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("UNDWWO82L94K127C","Mattia Morelli","0316-129469","332-8985111");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("BPRSDV62C49X657D","Cristina Grasso","0611-717971","351-7285939");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("ZEVRXD85K24Y584S","Angela Palmieri","0358-526020","352-3406442");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("UPNLDS46I97S916A","Elisa Martinelli","0295-006565","393-9349786");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("ZHMEJC68S91U221O","Paolo Pepe","0623-899017","360-8831797");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("LLWDWH29L38A112H","Riccardo Palmieri","0258-040710","385-2585211");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("FCEQGH61S26G974F","Arianna Benedetti","0793-984703","366-4367810");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("SDUPBY48V64Q767U","Vanessa Marra","0131-145108","394-1099872");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("UHEOOL17R85Y717H","Paolo Pepe","0967-173659","378-1520353");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("HCJJMW23E95E221X","Dario Piras","0616-559583","392-0221635");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("OAUUXU79T91U458K","Alex Barone","0925-785866","396-2048507");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("CVBXTB61U69W276X","Augusto Fiore","0448-711123","376-2306666");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("FLMIWQ69U58Z996Q","Giacomo Proietti","0357-214534","371-5828841");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("WRBAQE13H26L783O","Claudia Pinna","0278-587839","391-9745368");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("XTKVCI15N93J675Q","Claudio Gatti","0516-661211","328-3977268");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("JASCEI89G76X687E","Giacomo Monti","0233-026820","325-8810869");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("PAAEFC57D63D862F","Maria Riva","0749-030136","380-1623124");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("PCVDOC27J88H386I","Dario Calabrese","0681-387583","393-6011652");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("JQZZRC92H71I377F","Monica Orlando","0891-819859","368-4472970");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("LOUNVR17U71W894G","Domenico Bruno","0566-695865","384-5809364");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("SMOBCU53B92E547P","Alessandro Barbieri","0182-402306","369-6364494");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("UKWARY15Y65I922K","Mirko Mele","0633-034018","353-5005798");
INSERT INTO `Piscine-Roma-DB`.`Insegnante` (`CodFisc_I`,`Nome_I`,`Telefono_I`,`Cellulare_I`) VALUES ("OXSDAD44N25E329B","Samuele Santini","0768-141184","332-3875613");


INSERT INTO `Piscine-Roma-DB`.Qualifica (Nome_Q) VALUES 
('acquagym')
,('nuoto neonatale')
,('pallanuoto')
,('salvamento')
,('sincronizzato')
,('sub')
,('tuffi')
,('tuffi sincronizzati')
;

INSERT INTO `Piscine-Roma-DB`.Insegnante_Ha_Qualifica (CodFisc_Insegnante,Nome_Qualifica) VALUES 
('ABXIOT95T83K775C','acquagym')
,('JQZZRC92H71I377F','acquagym')
,('BEPESP91N32S144A','nuoto neonatale')
,('DCNAUY95X57Q238F','nuoto neonatale')
,('FHTRVE32U94E696P','nuoto neonatale')
,('BEPESP91N32S144A','pallanuoto')
,('DCNAUY95X57Q238F','pallanuoto')
,('LLWDWH29L38A112H','pallanuoto')
,('LOUNVR17U71W894G','pallanuoto')
,('OXSDAD44N25E329B','pallanuoto')
;
INSERT INTO `Piscine-Roma-DB`.Insegnante_Ha_Qualifica (CodFisc_Insegnante,Nome_Qualifica) VALUES 
('QMBSMZ85G62B462M','pallanuoto')
,('HONYJD31V17I559Y','salvamento')
,('JASCEI89G76X687E','salvamento')
,('UKWARY15Y65I922K','salvamento')
,('ABXIOT95T83K775C','sincronizzato')
,('CVBXTB61U69W276X','sincronizzato')
,('WXAXML68Q84K615X','sincronizzato')
,('ABXIOT95T83K775C','sub')
,('ENXXWF33P88K189U','sub')
,('LLWDWH29L38A112H','sub')
;
INSERT INTO `Piscine-Roma-DB`.Insegnante_Ha_Qualifica (CodFisc_Insegnante,Nome_Qualifica) VALUES 
('FLMIWQ69U58Z996Q','tuffi')
,('AUJZXD85R36S337X','tuffi sincronizzati')
,('FCEQGH61S26G974F','tuffi sincronizzati')
;

INSERT INTO `Piscine-Roma-DB`.Rotazione (Data_inizio,Data_fine,CodFiscale_Insegnante,Nome_Piscina_R) VALUES 
('2020-01-01','2020-01-31','ABXIOT95T83K775C','AquaTibur')
,('2020-02-01','2020-02-29','ABXIOT95T83K775C','Azzurra')
,('2020-03-01','2020-03-31','ABXIOT95T83K775C','Crawl 2000')
,('2020-01-01','2020-01-15','AUJZXD85R36S337X','Azzurra')
,('2020-01-16','2020-01-31','BCBKNH16I57M188A','Azzurra')
,('2020-02-01','2020-02-10','BEPESP91N32S144A','Azzurra')
,('2020-02-21','2020-02-29','BEPESP91N32S144A','AquaTibur')
,('2020-02-11','2020-03-31','BPRSDV62C49X657D','Azzurra')
,('2020-02-01','2020-02-20','DCNAUY95X57Q238F','AquaTibur')
;