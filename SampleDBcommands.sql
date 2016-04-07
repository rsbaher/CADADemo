INSERT INTO `dealership_system`.`user` VALUES('owner1','owner1@example.com','00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc',
NOW(), 'Owner1_fname', 1, 'Owner1_lname', 'Owner1_Mname', 3,
'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef');

insert into `dealership_system`.`customer` VALUES(1,'cust1@example.com',NOW(),
 'cust1','L1','M1',23,'F', 2, '403xxx****');
 
SELECT * FROM user;
SELECT * FROM customer;
