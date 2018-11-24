DROP PROCEDURE `sp_populate_EventTopic`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_populate_EventTopic`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN


    declare eventID int(10) unsigned;   
    declare eventTopic varchar(50);   
    declare eventTopicDesc varchar(75);   
    
    declare alphaNum varchar(50) default 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    declare alpha varchar(50) default 'abcdefghijklmnopqrstuvwxyz';
    declare num varchar(50) default '0123456789';
    declare tmpVAl varchar(100) default '';
    
    declare jloop int default 1;
	declare jloopStop int default 1 + floor(rand() * 5);
	declare innerJLoop int default 0;
	declare innerJLoopStop int default 1;
        
    declare eventTopicLoop int DEFAULT 1;
    declare eventTopicCnt int DEFAULT 0;
    
	DECLARE done INT DEFAULT FALSE;    
    
   	DECLARE cur2 CURSOR FOR
    SELECT e.EventID
    FROM Event e;    

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;


    open cur2;

        read_loop: LOOP

        	fetch cur2 into eventID;

        	IF done THEN
            	LEAVE read_loop;
        	END IF;
               
        
        	set eventTopicCnt = 1 + floor(rand() * 4);
        	-- set eventTopicCnt = 2;
        
        	set eventTopicLoop = 1;
        	while eventTopicLoop <= eventTopicCnt and eventID is not null DO

				-- generate Event Topic.
    			set tmpVAl = '';
				set innerJLoop = 1;
    		    set innerJLoopStop = 5 + floor(rand() * 45);

	    		WHILE innerJLoop <= innerJLoopStop DO
    	    		SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	    	    	SET innerJLoop = innerJLoop + 1;
	    		END WHILE;    
    
	    		set eventTopic = tmpVAl;
    
    			-- generate Event Topic Desc
        		set tmpVAl = '';
				set innerJLoop = 1;
	    	    set innerJLoopStop = 5 + floor(rand() * 70);
        
		    	WHILE innerJLoop <= innerJLoopStop DO
    		    	SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	    		    SET innerJLoop = innerJLoop + 1;
	    		END WHILE;    
    
    			set eventTopicDesc = tmpVAl;
     	
				insert INTO EventTopic
					  (EventID, EventTopic, EventTopicDesc)
				VALUES(eventID, eventTopic, eventTopicDesc);

    	    	set eventTopicLoop = eventTopicLoop + 1;
        	end WHILE;
     
	END LOOP;
    commit;
    
end
