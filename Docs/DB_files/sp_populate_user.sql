DROP PROCEDURE `sp_populate_user`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_populate_user`(IN `numUserToCreate` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN



    declare email varchar(50) default '';   
    declare fname varchar(25);   
    declare lname varchar(25);   
    declare telnum1 varchar(10);
    declare telnum2 varchar(10);
    declare age tinyint(3);
    declare gender char(1);
    declare registereddate datetime;
    declare lastlog datetime;
    
    declare tmpDate datetime;
    declare alphaNum varchar(50) default 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    declare alpha varchar(50) default 'abcdefghijklmnopqrstuvwxyz';
    declare num varchar(50) default '0123456789';
    declare tmpVAl varchar(100) default '';
    
    declare jloop int default 1;
	declare jloopStop int default numUserToCreate;
	declare innerJLoop int default 0;
	declare innerJLoopStop int default 1;
    declare tmpLocationID int default 0;
    
    CREATE TEMPORARY TABLE IF NOT EXISTS AvailableLocation_tmp
    (LocationID int(10) UNSIGNED NOT NULL);
    COMMIT; 

    -- filter out the locations that are being used by an institution.
    insert into AvailableLocation_tmp(LocationID)
    select l.LocationID
    from Location l
    left join Institution i
    	on l.LocationID = i.LocationID
    where i.LocationID is null; 

    while jloop <= jloopStop DO
		
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 3 + rand() * 20;
       -- set innerJLoopStop = 8;
        
		-- generate email.
    	WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alpha, FLOOR(1 + rand() * LENGTH(alpha) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;
        
        SET tmpVAl = CONCAT(tmpVAl, '@' );
        
		set innerJLoop = 1;
        set innerJLoopStop = 5 + rand() * 5;        
        -- set innerJLoopStop = 4;
        
        -- generate email.
	    WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alpha, FLOOR(1 + rand() * LENGTH(alpha) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;
    
    	SET tmpVAl = CONCAT(tmpVAl, '.' );
        -- generate email.
    	set innerJLoop = 1;
        set innerJLoopStop = 3;        
	    WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alpha, FLOOR(1 + rand() * LENGTH(alpha) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;
        
        set email = tmpVAl;
        
        
        -- generate fname.
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 2 + rand() * 23;            
       
	    WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alpha, FLOOR(1 + rand() * LENGTH(alpha) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;        
        
        set fname = tmpVAl;
        
        -- generate lname.
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 2 + rand() * 23;        

	    WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(alpha, FLOOR(1 + rand() * LENGTH(alpha) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;        
        
        set lname = tmpVAl;
        
        
        -- generate telnum1.
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 10;        

	    WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(num, FLOOR(1 + rand() * LENGTH(num) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;        
        
        set telnum1 = tmpVAl;
        
        
        -- generate telnum2.
        set tmpVAl = '';
		set innerJLoop = 1;
        set innerJLoopStop = 10;        

	    WHILE innerJLoop <= innerJLoopStop DO
        	SET tmpVAl = CONCAT(tmpVAl, substring(num, FLOOR(1 + rand() * LENGTH(num) ), 1)  );
	        SET innerJLoop = innerJLoop + 1;
    	END WHILE;        
        
        set telnum2 = tmpVAl;
        
        
        -- generate age.
        set age = 15 + rand() * 65;        
        
        set gender = substring('MF', FLOOR(1 +  rand() * LENGTH('MF') ), 1);

        -- generate registration date.
        set registereddate = TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2015-01-01 12:00:00', '2018-10-31 12:00:00')), '2015-01-01 12:00:00'); 
        

		-- generate LocationID . 
		set tmpLocationID = 0;
                                                       
        select a.LocationID  into tmpLocationID 
        from AvailableLocation_tmp a		
		order by RAND() LIMIT 1;
                
        insert into User(Email, FName, LName, MainTelNum, SecondaryTelNum, Age, Gender, RegisteredDate, LastLog, LocationID)
        values(email,fname, lname, telnum1, telnum2, age, gender, registereddate, registereddate, tmpLocationID);
        
                              
    	set jloop = jloop + 1;
  	end while;


end
