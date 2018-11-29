DELIMITER //
DROP PROCEDURE if exists `sp_populate_tables` //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_populate_tables`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN



/*
 delete from EVENT_TOPIC;
 delete from EVENT;
 delete from EVENT_POOL;
  delete from SYSTEM_HISTORY;
 
 delete from INSTITUTION;   
 delete from USER;    
 delete from LOCATION;
 delete from SYSTEM_HISTORY;
*/

--  call sp_populate_location(100);

--  institution cannot use all locations available, otherwise, users will have not location to be assigned. users are assigned locations that are not used by institutions.
--    call sp_populate_institution(50);

--   call sp_populate_user(500);

-- call sp_populate_event_pool(500);

--  call sp_populate_event(1000);

  call sp_populate_event_topic();

   end
