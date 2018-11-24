DROP PROCEDURE `sp_populate_tables`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_populate_tables`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN



 delete from EventTopic;
 delete from Event;
 delete from EventPool;
  delete from SystemHistory;
 
 delete from Institution;   
 delete from User;    
 delete from Location;
 delete from SystemHistory;


  call sp_populate_location(100);

--  institution cannot use all locations available, otherwise, users will have not location to be assigned. users are assigned locations that are not used by institutions.
  call sp_populate_institution(10);

  call sp_populate_user(10);

  call sp_populate_EventPool(10);

  call sp_populate_Event(10);

  call sp_populate_EventTopic();

   end
