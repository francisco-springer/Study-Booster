DROP PROCEDURE `sp_populate_EventPool`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_populate_EventPool`(IN `numEventPoolToCreate` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN

    declare eventName varchar(50) default '';   
    declare eventDescription varchar(25);  

    declare alphaNum varchar(50) default 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    declare alpha varchar(50) default 'abcdefghijklmnopqrstuvwxyz';
    declare num varchar(50) default '0123456789';
    declare tmpVAl varchar(100) default '';
    
    declare jloop int default 1;
	declare jloopStop int default numEventPoolToCreate;
	declare innerJLoop int default 0;
	declare innerJLoopStop int default 1;
    
    
    while jloop <= jloopStop DO
    
    	-- generate eventName.
    	set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 5 + floor(rand() * 70);
        -- set innerJLoopStop = 10;
        		
    	WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;    
    
    	set eventName = tmpVAl;    

		-- generate eventDesc.
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 5 + floor(rand() * 95);
        -- set innerJLoopStop = 10;
        
    	WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;    
        
    	set eventDescription = tmpVAl;
        
        
        
		insert INTO EventPool
			  (EventName, EventDescription)
		VALUES(eventName, eventDescription);
                 
    	set jloop = jloop + 1;
  	end while;

    


end
