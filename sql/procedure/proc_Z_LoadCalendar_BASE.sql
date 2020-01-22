CREATE PROCEDURE `temp-test`.`LoadCalendars`(startDate DATE, endDate DATE)
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE dt DATE DEFAULT startDate;
	DECLARE day INT DEFAULT (SELECT DATEDIFF(endDate,startDate)) + 1;
		
		
	CREATE TABLE calendars(
    fulldate DATE,
    PRIMARY KEY(fulldate)
	);
 
    WHILE counter <= day DO
        CALL InsertCalendar(dt);
        SET counter = counter + 1;
        SET dt = DATE_ADD(dt,INTERVAL 1 day);
    END WHILE;
		
		
	SELECT DAYNAME(fulldate),fulldate
	FROM `temp-test`.calendars,`temp-test`.Lezione 
	WHERE DAYOFWEEK(calendars.fulldate)=Lezione.Giorno_sett;
		
		
		
	DROP TABLE `temp-test`.calendars;
END