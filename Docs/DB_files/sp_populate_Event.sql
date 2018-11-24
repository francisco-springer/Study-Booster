DROP PROCEDURE `sp_populate_Event`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_populate_Event`(IN `numEventToCreate` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN


    declare eventName varchar(50) default '';   
    declare eventDescription varchar(50);   
    declare eventDateTime datetime;       
    declare institutionID int(10) unsigned;
    declare eventCreator varchar(50);
    declare guessCnt smallint(4) ;
	declare eventPoolID int(10) unsigned; 
    
    declare tmpDate datetime;
    declare alphaNum varchar(50) default 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    declare alpha varchar(50) default 'abcdefghijklmnopqrstuvwxyz';
    declare num varchar(50) default '0123456789';
    declare tmpVAl varchar(100) default '';
    
    declare jloop int default 1;
	declare jloopStop int default numEventToCreate;
	declare innerJLoop int default 0;
	declare innerJLoopStop int default 1;
    
    while jloop <= jloopStop DO
   
		select e.EventPoolID  into eventPoolID
        from EventPool e
        ORDER by rand() limit 1;
        
       -- INSERT INTO SystemHistory(txt, desc1, historyDate)
       -- VALUES('eventPoolID', eventPoolID, CURRENT_DATE);
        
    	select e.EventName into eventName from EventPool e where e.EventPoolID = eventPoolID;
     	select e.EventDescription into eventDescription from EventPool e where e.EventPoolID = eventPoolID;
    
    
    	set eventDateTime =  TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2015-01-01 12:00:00', '2019-01-01 12:00:00')), '2015-01-01 12:00:00'); 
                         --  TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2015-01-01 12:00:00', '2019-01-01 12:00:00')), '2015-01-01 12:00:00'); 
                                                  
        -- INSERT INTO SystemHistory(txt, desc1, historyDate)
        -- VALUES(eventName, eventDescription, CURRENT_DATE);
                                             
        select i.InstitutionID  into institutionID 
        from Institution i		
		order by RAND() LIMIT 1;                                               
                                                        
        select u.Email into eventCreator 
        from User u		
		order by RAND() LIMIT 1; 
               
        set guessCnt = 2 + floor(rand() * 15);
                                       
		insert INTO Event
			  (EventName, EventDescription, EventDateTime, InstitutionID, EventCreator, GuessTotalCnt, EventPoolID)
		VALUES(eventName, eventDescription, eventDateTime, institutionID, eventCreator, guessCnt, eventPoolID);
                                                        
    	set jloop = jloop + 1;
  	end while;

    
end
