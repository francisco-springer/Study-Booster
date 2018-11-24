DROP PROCEDURE `sp_populate_institution`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_populate_institution`(IN `numInstitutionToCreate` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN

 
    declare InstitutionName varchar(50) default '';   
    declare InstitutionCreatedDate date;   
    declare InstitutionCreateTime timestamp; 
    declare tmpDate datetime;
    declare alphaNum varchar(50) default 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    declare tmpVAl varchar(100) default '';
    
    declare jloop int default 1;
	declare jloopStop int default numInstitutionToCreate;
	declare innerJLoop int default 0;
	declare innerJLoopStop int default 1;
    declare tmpLocationID int default 0;
    
    
--   call sp_populate_location(10);


	while jloop <= jloopStop DO

        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 1 + floor(rand() * 49);
        set tmpLocationID = -1;
        
        -- get a reandom location that is not being used by an institution.
        select Location.LocationID into tmpLocationID 
		from Location
		left join Institution
   			on Location.LocationID = Institution.LocationID
		where Institution.LocationID is null
		order by RAND() LIMIT 1;
        
--         INSERT INTO SystemHistory(txt, desc1, historyDate)
--         VALUES('value for tmpLocationID', tmpLocationID, CURRENT_DATE);
        
        -- don't insert any more Institution records if no more locations are available without repeating. instead, insert a history stating that there are no more location available to assign an institution. 
        if(tmpLocationID <> -1 ) then
                   
			-- generate institution name.
    		WHILE innerJLoop <= innerJLoopStop DO
        		SET tmpVAl = CONCAT(tmpVAl, substring(alphaNum, FLOOR(1 + rand() * LENGTH(alphaNum) ), 1)  );
	        	SET innerJLoop = innerJLoop + 1;
    		END WHILE;
          
	        set InstitutionName = tmpVAl;
          
			set InstitutionCreatedDate = CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 14) DAY;
        	   
        	/*         		                                                            --         mindate                maxdate                 mindate
				SELECT TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2010-01-01 14:53:27', '2012-12-31 12:00:00')), '2010-01-01 12:00:00');                   
        	*/
          
	        set tmpDate =  TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '1950-01-01 12:00:00', '2000-10-31 12:00:00')), '1950-01-01 12:00:00');  
        
    	    -- set InstitutionCreatedDate = DATE_FORMAT(InstitutionCreatedDate, '%H:%i:%s');
         
        	-- set InstitutionCreatedDate = DATE(tmpDate);  
            set InstitutionCreatedDate = tmpDate;
         
        	Insert into Institution
           		(Institution.LocationID, Institution.InstitutionName, Institution.InstitutionRegisteredDateTime)
 			VALUES( tmpLocationID,      InstitutionName,             InstitutionCreatedDate                    );  
	
        ELSE
                                                     
         	INSERT INTO SystemHistory(txt, desc1, historyDate)
        	VALUES('Can not insert any more institutions since there are no more available location', 'need to insert more location rows if you want to insert more institution.', CURRENT_TIMESTAMP);
                                                     
       	end if;

        set jloop = jloop + 1;
    end while;
            
      
                                                 
END
