


CREATE SCHEMA `dealership-system`;

CREATE TABLE `dealership_system`.`user` (
	`id` INT(10) unsigned Not null primary key,
    `username` varchar(16),
    `email` varchar(225),
    `password` varchar(128),
    `salt` varchar(128),
    `Fname` varchar(45),
    `Mname` varchar(45),
    `Lname` varchar(45),
    `user_type` int(11),
    `create_time` timestamp
)ENGINE = InnoDB;

CREATE TABLE `dealership_system`.`customer` (
	`id` bigint(10) unsigned Not null primary key,
    `Fname` varchar(45),
    `Mname` varchar(45),
    `Lname` varchar(45),
    `email` varchar(255),
    `age` int(11),
    `gender` varchar(1),
    `phone` varchar(10),
    `create_time` timestamp,
    `Rep_id` int(10) unsigned,
    foreign key(Rep_id) REFERENCES user(id)
)ENGINE = InnoDB;

CREATE TABLE `dealership_system`.`customer_billing_info` (
	`cust_id` bigint(10) unsigned Not null,
    `street_address` varchar(50),
    `postal_code` varchar(6),
    `city` varchar(45),
    `province` varchar(2),
    `country` int(15),
    foreign key(cust_id) REFERENCES customer(id)
)ENGINE = InnoDB;
CREATE TABLE `dealership-system`.`Meeting` (
	`Cust_id` INT NOT NULL,
	`Emp_id` INT NOT NULL,
	`created_on` timestamp default current_timestamp,
	`date` VARCHAR(50) NOT NULL,
	`isDesignatedRep` VARCHAR(1) NOT NULL,
	`des_rep` INT NOT NULL,
	`notes` VARCHAR(500) NOT NULL,
	FOREIGN KEY(Cust_id) REFERENCES Customer(id),
	FOREIGN KEY(des_rep) REFERENCES Employee(id),
	FOREIGN KEY(Emp_id) REFERENCES Employee(id)
)ENGINE = InnoDB;

CREATE TABLE `dealership-system`.`Colours`(
	`code` VARCHAR(50) NOT NULL PRIMARY KEY,
	`name` VARCHAR(30) NOT NULL,
	`image` VARCHAR(50) NOT NULL /*how do we save an image*/
)ENGINE = InnoDB;

CREATE TABLE `dealership-system`.`Pallets`(
	`id` INT NOT NULL auto_increment PRIMARY KEY,
	`Master_colour` VARCHAR(50) NOT NULL, 
	`colour1` VARCHAR(50) NOT NULL, 
	`colour2` VARCHAR(50) NOT NULL, 
	`colour3` VARCHAR(50), 
	`colour4` VARCHAR(50), 
	`in_out` VARCHAR(1) NOT NULL,
	 FOREIGN KEY(Master_colour) REFERENCES Colours(code),
	 FOREIGN KEY(colour1) REFERENCES Colours(code),
	 FOREIGN KEY(colour2) REFERENCES Colours(code),
	 FOREIGN KEY(colour3) REFERENCES Colours(code),
	 FOREIGN KEY(colour4) REFERENCES Colours(code)
)ENGINE = InnoDB;

CREATE TABLE `dealership-system`.`Car`(
	`id`  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`brand` VARCHAR(10),
	`model` VARCHAR(10),
	`year` VARCHAR(4),
	`interior_pallet` INT NOT NULL,
	`exterior_pallet` INT NOT NULL,
	`description` VARCHAR(200),
	`actual_price` INT NOT NULL,
	`listed_price` INT NOT NULL,
	FOREIGN KEY(interior_pallet) REFERENCES Pallets(id),
	FOREIGN KEY(exterior_pallet) REFERENCES Pallets(id)
) ENGINE = InnoDB;

CREATE TABLE `dealership-system`.`Cust_Has_Car` (
	`Cust_id` INT NOT NULL,
	`brand` VARCHAR(10) NOT NULL,
	`model` VARCHAR(10) NOT NULL,
	`year` VARCHAR(4) NOT NULL,
	`interior_colour` VARCHAR(50) NOT NULL,
	`exterior_colour` VARCHAR(50) NOT NULL,
	FOREIGN KEY(Cust_id) REFERENCES Customer(id)
)ENGINE = InnoDB;

CREATE TABLE `dealership-system`.`Cust_Wanted_Car` (
	`Cust_id` INT NOT NULL,
	`Car_id` INT NOT NULL,
	`num` INT NOT NULL default 1, /* to differentiate cars for each customer*/
	`interior_colour` VARCHAR(50) NOT NULL,
	`exterior_colour` VARCHAR(50) NOT NULL,
	`discount` VARCHAR(50),
	`rational` VARCHAR(100),
	`payment_status` VARCHAR(50),
	FOREIGN KEY(Cust_id) REFERENCES Customer(id),
	FOREIGN KEY(Car_id) REFERENCES Car(id),
	FOREIGN KEY(interior_colour) REFERENCES Colours(code),
	FOREIGN KEY(exterior_colour) REFERENCES Colours(code)
)ENGINE = InnoDB;
