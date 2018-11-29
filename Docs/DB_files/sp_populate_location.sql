DROP PROCEDURE `sp_populate_location`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_populate_location`(IN `numLocationToCreate` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN



    declare LocationLine1 varchar(75) default '';    
    declare LocationLine2 varchar(25) default '';   
    declare LocationCity varchar(50) default '';   
    declare LocationState varchar(2) default '';   
    declare LocationZip int(5) default 0; 
    declare LocationIndications varchar(100) default ''; 
    declare alphaNum varchar(62) default 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    declare alphaUp varchar(26) default 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    declare tmpVAl varchar(100) default '';
    declare jloop int default 1;
	declare jloopStop int default numLocationToCreate;
	declare innerJLoop int default 0;
	declare innerJLoopStop int default 1;
   

--   call sp_populate_location(10);


	while jloop <= jloopStop DO
    
--   LocationLine1
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 5 + floor(rand() * 70);
        
    	WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;
          
        set LocationLine1 = tmpVAl;
        
        --   LocationLine2
        SET tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 5 + floor(rand() * 20);
        
    	WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;
         
        set LocationLine2 = tmpVAl;
        
        --   LocationCity 
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 1 + floor(rand() * 49);
        
    	 WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	 END WHILE;
         
         set LocationCity = tmpVAl;
                 
         --   LocationState
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 2;
        
    	 WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alphaUp, FLOOR(1 + rand() * LENGTH(alphaUp) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	 END WHILE;
         
         set LocationState = tmpVAl;
         
         set LocationZip = 10000 + floor(rand() * 89999);
         
--   LocationIndications
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 1 + floor(rand() * 99);
        
    	 WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	 END WHILE;
         
         set LocationIndications = tmpVAl;
         
		--  ,LocationLine2,LocationCity,LocationState,LocationZip,LocationIndications)  
                                                  
        Insert into LOCATION
           (LocationLine1, LocationLine2, LocationCity, LocationState, LocationZip, LocationIndications                     )
 		VALUES ( LocationLine1, LocationLine2, LocationCity, LocationState, LocationZip, LocationIndications   );  

        set jloop = jloop + 1;
    end while;
            
            
-- 	call sp_populate_institution(10);
-- 	call sp_populate_user(10);
            
            
            
END
