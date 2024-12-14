
/* Creates Client Table */
CREATE TABLE IF NOT EXISTS CLIENT(
clientID int NOT NULL auto_increment,
client_name VARCHAR(55) NOT NULL,
client_address VARCHAR(55) NOT NULL,
client_age int NOT NULL,
PRIMARY KEY (clientid)
);



/* Creates POLICY Table */
CREATE TABLE IF NOT EXISTS POLICY(
policyID int NOT NULL auto_increment,
policyType varchar(55) NOT NULL,
policyTerm varchar(45) NOT NULL,
policyLimits varchar(100)  NOT NULL,
primary key (policyID)
);


/* Creates POLICY_LIST */
CREATE TABLE IF NOT EXISTS POLICY_LIST(
CLIENT_clientID int not null,
POLICY_policyID int not null,
PRIMARY KEY (CLIENT_clientID, POLICY_policyID),
foreign key (CLIENT_clientID) references CLIENT (clientID),
foreign key (Policy_policyID) references POLICY (policyID)
);

/* iNSERTS CLIENT DATA INTO */
INSERT INTO CLIENT (clientID, client_name, client_address, client_age)
VALUES
	(1,	'James Clark', '1001 Plymouth Ave', 38),
	(2,	'Leah Nicole', '2401 Chicago Ave. #212', 36),
	(3,	'Silas Alexander', '5012 Humboldt Lane',	22),
	(4,	'Noah Charles', '501 College Ave.',	25),
	(5,	'Chris Isaac', '228 e, 149th st.',	37),
	(6,	'Noah Charles', '501, College Ave.',	25),
	(7,	'Brittney Owens', '321 Thursday Ave.',	42),
	(8,	'Kurt Douglas', '123Mt. Glenwood',	58),
	(9,	'Areta Farries', '789 Touy Ave.',	62),
	(10, 'Jessica Daniel', '698, Featherstone',	47),
	(11, 'Gary Moore', '698 Featherstone',	48),
	(12, 'Elnora Daniel', '698 Featherstone', 61),
	(13, 'Daniel Moore', '698 Featherstone',	22),
	(14, 'Cheryl Pearson', '228 e, 149th st.',	67);
    
 /* INSERTS POLICY DATA INTO POLICY TABLE */   
INSERT INTO POLICY (policyID, policyType, policyTerm, policyLimits)
VALUES
	(1, 'Home', 'yearly', '$100,000'),
	(2,	'Home', 'yearly', '$250,000'),
	(3,	'Home',	'yearly', '$500,000'),
	(4,	'Home',	'yearly', '$1,000,000'),
	(5,	'Home',	'6-month', '$100,000'),
	(6,	'Home',	'6-month', '$250,000 '),
	(7,	'Home','6-month', '$500,000'),
	(8,	'Home',	'6-month', '$1,000,000'),
	(9,	'Car',	'yearly', '$60,000'),
	(10, 'Car',	'yearly', '$120,000'),
	(11, 'Car',	'6-month', '60,000'),
	(12, 'Car',	'6-month', '$120,000');
    
 /* INSERTS POLICY_LIST DATA INTO POLICY_LIST TABLE */   
INSERT INTO policy_list (CLIENT_clientID, POLICY_policyID)
	VALUES
		(2,	1),
		(9,	1),
		(13, 1),
		(2,	4),
		(5,	4),
		(8,	5),
		(14, 6),
		(11, 7),
		(1,	8),
		(3,	8),
		(7,	9),
		(1,	10),
		(3,	10),
		(7,	10),
		(10, 10),
		(6,	11),
		(4, 12);


