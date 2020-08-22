SELECT * 
FROM `e107_db_raelians` 
WHERE   
    `followup_status` = 'No contact' 
and `followup` = 0  
and `spreader` = 'new rael.org' 
and `creationdate` > '2020-07-14' 
and `emailok` = ''