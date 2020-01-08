# bdd-project
Repository per progetto Basi di Dati anno 2019/2020

# Testo
Sistema di gestione delle piscine comunali

Si vuole realizzare un sistema informativo per la gestione delle piscine del comune di Roma, tenendo conto delle seguenti informazioni.

Le piscine sono identificate univocamente attraverso il nome. Per ciascuna sono inoltre noti l'indirizzo, un numero di telefono, ed il nome di un responsabile. Nel caso la piscina disponga anche di una vasca all'aperto, la base dati contiene l'informazione di quando tale vasca è utilizzabile (ad esempio da Marzo a Settembre, da Luglio ad Agosto, ecc.).

Presso le piscine sono organizzati dei corsi; lo stesso tipo di corso può essere svolto presso piscine diverse, eventualmente con modalità differenti. Ciascun corso è pertanto identificato dal nome dell'attività svolta, ad esempio aerobica, acquagym, corso di sincronizzato o corso per gestanti, e dal nome della piscina presso cui tale corso si svolge. Per ciascun corso, svolto presso una certa piscina, è noto il costo, il numero massimo e minimo di partecipanti, in quali giorni della settimana si svolge ed a che ora. Presso ciascuna piscina ogni corso può essere svolto più volte al giorno e più volte durante la settimana.

Il corpo insegnante lavora a rotazione presso le varie piscine. Per ciascun insegnante è noto il codice fiscale, che lo identifica, un nome, il numero di cellulare, se disponibile, e l'elenco delle qualifiche dell'insegnante (ad esempio istruttore di sub, istruttore di aerobica, ecc). All'interno della base dati si vuole tener traccia di tutti gli intervalli di tempo in cui un insegnante ha lavorato presso ciascuna piscina. Non si escluda che lo stesso insegnante possa aver lavorato presso una stessa piscina in intervalli di tempo diversi.

Le piscine possono essere frequentate o da persone che sono iscritte ai corsi, o secondo la modalità ad “ingresso singolo” per svolgere nuoto libero. Tutte le persone che accedono alle piscine comunali sono identificate attraverso il loro codice fiscale ed inoltre sono noti il nome, un indirizzo ed un numero arbitrario di contatti, quali numero di telefono, di cellulare, indirizzo email. Un utilizzatore del sistema di piscine comunali può accedere a più di una piscina, frequentando corsi differenti.

Le persone che sono iscritte ai corsi devono presentare un certificato medico. Pertanto, nel caso la persona sia iscritta ad un corso, il database contiene l'informazione del medico che ha redatto il certificato, la data in cui la persona ha presentato il certificato, l'età della persona, e l'elenco dei corsi a cui è iscritta. Per le persone che hanno fatto solo ingressi sono noti solo la data in cui è stato effettuato l'ultimo ingresso e presso quale piscina.

Gli insegnanti possono visualizzare dei report che mostrano l’orario e il luogo di lavoro, su base mensile/settimanale. Gli addetti alla segreteria possono gestire tutte le informazioni relative agli utenti, ma possono gestire unicamente i corsi legati alla piscina in cui lavorano. Possono inoltre variare il numero di corsi e gli orari della piscina in cui lavorano. Gli addetti comunali possono inserire/modificare le informazioni sulle piscine e sul corpo insegnante.

