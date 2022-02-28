create database uber_final;
use uber_final;
drop table Driver;

/*
create table Driver (
	id INT,
	Name VARCHAR(50) not null, 
	Phone_No VARCHAR(50) not null unique,
	
    Aadhaar_Number VARCHAR(50) not null unique,
    Age INT check(Age >= 18),

	Address VARCHAR(50) not null,
	Experience INT default 0, 
	Rating DECIMAL(2,1) default 0,
	Earning VARCHAR(50) default 0,
    primary key(id)
    
);
*/

create table Passenger (
	Name VARCHAR(50) not null,
	Phone_Number VARCHAR(50),
	Email_id VARCHAR(50) not null unique,
	Age INT, 
	Mode_of_payment VARCHAR(50) default 'CASH',
    primary key(Phone_Number)
    
);
-- Passenger done
-- Vehicle done
-- Transections done
-- Trip done

create table Vehicle (
	vin VARCHAR(50),
	Color VARCHAR(50) not null,
	AC VARCHAR(50),
	WiFi VARCHAR(50),
	Model_year VARCHAR(50) not null,
	Type VARCHAR(50) not null,
	Vehicle_company VARCHAR(50) not null,
	Fuel VARCHAR(50) not null,
	Prime_ride VARCHAR(50) not null,
    primary key (vin)
);

-- drop table Trip;
-- create table Trip (
-- 	id INT,
--     
-- 	booking_time time,
-- 	 
-- 	pickup_time time ,
--     waiting_time INT ,
--     check(Time(waiting_time) >= Time(booking_time)),
--     check(Time(pickup_time) >= Time(waiting_time)),
-- 	trip_date DATE not null,
-- 	total_time DECIMAL(4,2) not null, 
-- 	pickup_location VARCHAR(50) not null,
-- 	drop_location VARCHAR(50) not null,
-- 	distance DECIMAL(5,2) not null,
--     
--     primary key (id)
--     
-- );

create table Transections (
	 transection_id VARCHAR(50),
	primary key(transection_id),
    coupon VARCHAR(50),
	mode_of_payment VARCHAR(50) default 'CASH'
);

create table trip (
	id INT,
	booking_time time,
	pickup_time time,
	waiting_time INT,
	trip_date DATE,
	total_time INT,
	pickup_location VARCHAR(50),
	drop_location VARCHAR(50),
	distance DECIMAL(5,2),
    
    check(pickup_time > booking_time)
);

create table Driver (
	id INT,
    primary key(id),
	Name VARCHAR(50),
	Phone_No VARCHAR(50),
	Aadhaar_Number VARCHAR(50),
	Age INT,
	Address VARCHAR(50),
	Experience INT,
	Rating DECIMAL(2,1),
	Earning DECIMAL(8,2)
);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (1, 'Idelle Chatainier', '5616058298', '6244 0055 7680', 42, '772 Westend Pass', 8, 0.4, 127150.48);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (2, 'Alejandra Polotti', '3719003580', '9537 3665 0598', 51, '68622 Oriole Way', 3, 2.9, 39953.85);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (3, 'Free Comport', '7473290479', '2770 2685 7415', 50, '38091 Jana Crossing', 5, 1.7, 82114.6);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (4, 'Mariette Abernethy', '2004317756', '6113 0021 1949', 54, '951 Springview Trail', 13, 4.8, 85471.32);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (5, 'Lynnett McMenamin', '9022856833', '5877 1455 6022', 40, '60 Browning Alley', 15, 0.2, 31557.13);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (6, 'Randi North', '3275147098', '2113 4652 9250', 57, '345 Hallows Avenue', 1, 2.6, 31799.25);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (7, 'Belinda Bysshe', '7216501930', '4895 2359 9840', 59, '22 Granby Circle', 5, 1.1, 60293.66);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (8, 'Essie Brigham', '9104565259', '1304 9283 7285', 27, '39 Westerfield Junction', 1, 3.0, 54522.97);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (9, 'Hartwell Thaxton', '3132178593', '4381 4627 6315', 58, '31636 West Alley', 15, 0.5, 27572.16);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (10, 'Mose Gutridge', '2827873570', '9319 5190 0214', 52, '92 Charing Cross Place', 4, 0.6, 40679.64);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (11, 'Adriane Beamand', '6775456072', '9976 4667 2448', 53, '3 Londonderry Lane', 8, 2.5, 128554.75);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (12, 'Michell Blackden', '1928485633', '2471 4862 8330', 20, '3777 Caliangt Hill', 4, 0.7, 74808.0);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (13, 'Gwendolen Geldert', '1498186551', '6732 4662 0394', 52, '2558 Tony Terrace', 7, 0.7, 48167.89);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (14, 'Beverlee Kimberly', '3765854365', '3296 1943 4831', 34, '2483 Pond Drive', 1, 3.9, 111878.85);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (15, 'Philipa Thursfield', '3693208036', '2864 3908 6002', 29, '62507 Russell Pass', 10, 4.8, 127562.61);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (16, 'Nikolas Saturley', '5995427811', '2655 0653 6721', 21, '64712 Towne Junction', 11, 4.4, 12563.86);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (17, 'Hieronymus Gillies', '2246062203', '5522 0917 9676', 27, '2 Lukken Junction', 7, 3.6, 71163.91);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (18, 'Nicol Parysiak', '8846340029', '7269 4392 5107', 18, '130 Karstens Plaza', 1, 3.4, 95104.85);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (19, 'Augustine Woakes', '9081293125', '7058 2105 7552', 43, '07 Surrey Street', 3, 1.3, 113390.06);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (20, 'Trumaine Slocum', '1107003886', '2799 2408 9152', 47, '1 Lotheville Drive', 10, 4.2, 143177.63);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (21, 'Regan Mingus', '9282413570', '6423 5242 0322', 27, '79 Pennsylvania Avenue', 11, 0.4, 90959.76);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (22, 'Stevena Lennard', '9437912575', '5521 9330 6344', 52, '95 Del Sol Trail', 12, 4.4, 89575.5);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (23, 'Pierce Print', '5412193283', '8486 4784 1141', 48, '4 Armistice Trail', 4, 4.6, 70269.71);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (24, 'Kati Jimson', '9592459109', '7058 1430 8770', 51, '43134 South Pass', 14, 4.2, 44487.61);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (25, 'Ase Gilmour', '5877109120', '7872 9610 2593', 24, '94549 Valley Edge Plaza', 0, 1.7, 32365.92);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (26, 'Shir Rivel', '9941352989', '5456 4522 8272', 19, '25086 Jay Street', 14, 0.3, 77885.8);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (27, 'Kira Lente', '8934114096', '5682 2828 3671', 41, '727 Kipling Junction', 11, 1.4, 26409.3);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (28, 'Lisle Beavers', '4944070934', '6364 3388 1167', 48, '9391 Debra Court', 9, 1.7, 53508.25);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (29, 'Perri Dufoure', '6894643117', '4569 0843 8375', 33, '31772 Golf Course Hill', 9, 4.0, 20161.74);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (30, 'Bernadene Clacey', '4549358378', '9803 2290 9575', 58, '00807 4th Alley', 12, 4.4, 141282.47);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (31, 'Minor England', '5576167828', '5628 0616 0989', 19, '610 School Court', 4, 1.2, 107361.47);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (32, 'Deena Ratazzi', '8903270789', '7415 5727 7172', 57, '7 Dunning Lane', 6, 4.3, 97351.9);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (33, 'Florance Vernham', '3644235921', '6729 8437 3431', 40, '2700 Gale Avenue', 7, 4.1, 81931.55);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (34, 'Lorant Chick', '7638189540', '3634 1987 7935', 42, '06977 Northport Place', 5, 0.0, 143303.11);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (35, 'Man MacAllaster', '1633724914', '0209 8633 9110', 32, '53604 Bay Alley', 10, 1.4, 127774.53);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (36, 'Marietta Nazer', '7507883723', '0258 0281 0487', 28, '3709 Towne Pass', 9, 4.4, 116454.41);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (37, 'Charyl Maffezzoli', '7791912857', '5754 7453 1994', 46, '2 Loftsgordon Junction', 15, 1.3, 261.12);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (38, 'Julienne Hanster', '2012092011', '9020 2440 0766', 19, '86 Kings Plaza', 10, 2.0, 106843.2);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (39, 'Dorelle Baseke', '2059639824', '4222 8959 2645', 57, '638 Grasskamp Court', 15, 1.5, 135806.41);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (40, 'Brandy Leggan', '6508039632', '9865 4965 1567', 57, '553 Rutledge Center', 9, 2.1, 130131.95);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (41, 'Jon Di Iorio', '7418974017', '0856 8385 6331', 20, '1 Hauk Drive', 12, 4.1, 92912.97);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (42, 'Dinnie Pipkin', '6653292400', '0575 8425 9860', 29, '0772 Lunder Alley', 15, 1.9, 35452.0);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (43, 'Keri Gregr', '1067035823', '6393 8069 8350', 44, '0195 Bluejay Point', 9, 1.0, 125707.8);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (44, 'Jacklyn Prahl', '5864858992', '4193 2670 1769', 32, '9 Fisk Center', 11, 1.4, 76530.03);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (45, 'Gifford Follitt', '3996874077', '5162 1348 0852', 38, '134 Anzinger Point', 7, 2.9, 125612.2);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (46, 'Rice Dunford', '2684120794', '9845 4745 4576', 52, '6 La Follette Lane', 7, 3.4, 50163.7);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (47, 'Huntlee Burree', '2575732803', '2514 5620 8253', 60, '15382 Tennyson Park', 1, 1.1, 116629.32);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (48, 'Sauveur Kepling', '1077530868', '0286 9750 5548', 56, '64797 Oak Park', 13, 0.5, 120564.3);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (49, 'Lauren Grigorescu', '5469130023', '0045 5782 3499', 22, '706 Vermont Point', 7, 2.0, 58411.26);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (50, 'Shela Ridewood', '3174782117', '9268 5429 2050', 52, '38 Blackbird Pass', 15, 4.3, 85084.56);


/*
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (1, 'Immanuel Anfossi', '3212613050', '3968 1618 6824', 35, '30 Lawn Drive', 7, 3.5, '$1764.39');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (2, 'Annadiane Belderfield', '7283468533', '5222 4817 6048', 33, '5262 Lerdahl Place', 8, 2.6, '$514.32');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (3, 'Reggi Ambrosoni', '4465469650', '1996 3221 1083', 47, '15601 Hallows Point', 4, 3.3, '$1734.21');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (4, 'Alica Hentzeler', '2741178826', '6154 4446 4080', 39, '5340 Claremont Park', 9, 1.0, '$640.23');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (5, 'Elfie Illem', '3658788277', '9699 9165 4503', 28, '75 Burrows Alley', 14, 2.9, '$1996.41');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (6, 'Alistair Cuff', '9178855990', '7831 9476 5017', 19, '422 Bultman Park', 1, 0.2, '$1796.63');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (7, 'Rudie Baile', '7249442245', '6493 9199 3754', 26, '34 Di Loreto Place', 5, 3.1, '$311.15');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (8, 'Fanni Costain', '3912050345', '6935 5347 0727', 36, '17 High Crossing Terrace', 10, 1.5, '$1473.47');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (9, 'Bernette Celand', '3827583156', '9493 1730 6718', 27, '8472 Wayridge Center', 10, 0.6, '$1536.53');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (10, 'Michal Chater', '3623224407', '8541 6204 6400', 22, '29 Erie Parkway', 10, 4.9, '$393.36');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (11, 'Marabel Orth', '2784161705', '8604 4749 9477', 30, '38 Sutherland Road', 5, 0.2, '$285.58');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (12, 'Bary Trevino', '9892589647', '5605 2847 8732', 38, '5 La Follette Drive', 1, 1.9, '$565.57');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (13, 'Paten Ensor', '8681506486', '6032 5367 2930', 60, '0083 Florence Terrace', 5, 4.8, '$145.22');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (14, 'Justino Nowland', '6385695948', '4417 8606 0873', 50, '4281 Old Gate Parkway', 12, 2.0, '$1533.29');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (15, 'Diana Derham', '1497713023', '7387 7932 3450', 23, '154 Cordelia Way', 10, 4.5, '$1594.07');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (16, 'Olenolin Jellman', '4461722058', '2894 5342 2010', 33, '376 Thompson Parkway', 13, 1.6, '$865.99');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (17, 'Lindsy Salvatore', '4824630523', '6746 6321 8989', 40, '5432 Johnson Street', 7, 3.5, '$1155.02');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (18, 'Karylin Derham', '3549154279', '0481 9935 3708', 36, '48 High Crossing Park', 4, 2.9, '$1890.24');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (19, 'Alon Tingly', '6016848081', '7315 1144 7315', 50, '5901 Harper Center', 9, 1.6, '$144.29');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (20, 'Zed Buckler', '8505253327', '6018 5065 5992', 24, '3620 Cascade Drive', 13, 2.2, '$271.46');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (21, 'Harley Mallatratt', '5031023527', '0779 2187 9832', 59, '40305 Monterey Drive', 12, 4.5, '$1051.65');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (22, 'Mateo Beltzner', '2972536432', '9591 7514 0485', 58, '229 Raven Way', 2, 4.1, '$1462.95');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (23, 'Jonas Jeste', '7235058107', '0333 6785 8665', 22, '644 Meadow Ridge Hill', 10, 1.4, '$1452.23');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (24, 'Wallis Mesias', '9504749869', '5970 3187 0857', 33, '829 Karstens Park', 9, 0.2, '$964.59');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (25, 'Clemente Sanpere', '2038302576', '0640 3941 8842', 38, '6572 Armistice Circle', 4, 4.2, '$193.01');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (26, 'Brinn Kerbler', '4604460200', '7398 0749 4121', 30, '621 Almo Circle', 3, 1.4, '$831.76');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (27, 'Harrietta Hughson', '1209974167', '6499 1863 3500', 57, '21896 Carioca Hill', 1, 1.4, '$1176.96');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (28, 'Deloria Prose', '3533124818', '8259 6259 6407', 40, '060 Melody Plaza', 14, 0.4, '$189.10');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (29, 'Estevan Schlag', '3828808292', '1255 1928 3509', 42, '2037 Ludington Court', 8, 1.5, '$1584.91');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (30, 'Bruce Upfold', '8725682178', '5734 1009 1513', 42, '79537 Debra Junction', 9, 4.3, '$1985.51');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (31, 'Eldon Athersmith', '8343144463', '8971 3670 7348', 38, '5229 Ryan Way', 6, 1.1, '$1924.20');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (32, 'Viviene Danbrook', '5425660023', '9301 3828 7576', 28, '9 Lotheville Road', 3, 0.6, '$897.08');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (33, 'Iorgo Aysik', '3817495494', '3616 6768 4925', 52, '2738 Golden Leaf Junction', 2, 0.7, '$1119.87');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (34, 'Zulema Johnys', '4956520061', '6750 1358 8868', 20, '24552 Logan Drive', 8, 1.2, '$634.96');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (35, 'Silvanus Castro', '7202927680', '1272 6082 5207', 53, '2319 Parkside Pass', 1, 3.4, '$362.58');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (36, 'Rufe Mercey', '6297523227', '6847 7053 6956', 52, '4598 Clyde Gallagher Junction', 8, 3.5, '$371.17');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (37, 'Ranee Lavis', '9543925427', '7959 8368 5558', 46, '81 Montana Point', 12, 0.3, '$1363.56');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (38, 'Pietrek Crier', '7984890051', '7430 9367 6243', 42, '7215 Vidon Parkway', 10, 1.0, '$1223.45');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (39, 'Corine Patsall', '4025209548', '6427 0010 5796', 35, '03164 Fordem Pass', 11, 0.9, '$1199.15');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (40, 'Adi Franchioni', '8678909758', '2815 7122 2449', 40, '90683 5th Drive', 9, 4.0, '$202.56');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (41, 'Alyce Ventom', '6743973487', '2674 3387 2300', 57, '265 Miller Hill', 12, 4.0, '$170.50');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (42, 'Tamas Gaskarth', '7436474491', '1249 4913 6122', 47, '6390 Pennsylvania Junction', 3, 4.6, '$1904.35');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (43, 'El MacNally', '5303095469', '5550 2331 1993', 52, '66 Stang Park', 7, 1.0, '$1268.00');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (44, 'Cass Ivanitsa', '8912460800', '8254 1398 4782', 24, '49 Mallory Alley', 13, 4.4, '$634.73');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (45, 'Forester Legonidec', '3601671239', '6293 8021 8258', 35, '059 Towne Court', 10, 1.9, '$1523.71');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (46, 'Rodina Volkers', '2733340315', '3880 8349 4017', 31, '15728 Montana Road', 8, 3.4, '$826.24');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (47, 'Jephthah Mercey', '3371843386', '7675 3850 2755', 48, '50 Tony Place', 5, 3.8, '$683.51');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (48, 'Reade Plumbridge', '1969073657', '2756 0643 9536', 47, '9 Red Cloud Alley', 12, 1.5, '$1371.86');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (49, 'Faunie Stanlock', '2868580806', '0534 3722 3580', 50, '724 Ronald Regan Center', 14, 0.7, '$1216.21');
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (50, 'Clemmie Penchen', '5312869110', '6021 7399 0186', 27, '47086 Donald Hill', 10, 3.5, '$550.99');
*/

insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (1, '4:12', '12:11', 16, '2021-03-10', 64, '981 Towne Avenue', '7 Aberg Avenue', 5.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (2, '4:42', '15:21', 21, '2022-01-21', 8, '559 Oriole Parkway', '20330 Northview Parkway', 140.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (3, '4:13', '8:00', 25, '2021-11-30', 113, '5 Ramsey Street', '25 Grover Parkway', 236.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (4, '0:57', '10:43', 6, '2021-06-08', 113, '73 Clyde Gallagher Court', '70827 Straubel Drive', 278.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (5, '0:21', '20:42', 28, '2021-11-16', 18, '32133 Porter Drive', '155 Sutherland Court', 181.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (6, '2:18', '13:00', 7, '2021-05-18', 27, '925 Erie Pass', '8275 Farwell Alley', 343.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (7, '3:23', '6:05', 5, '2021-08-23', 41, '3043 Ridgeway Junction', '4 Sage Alley', 179.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (8, '3:27', '16:28', 11, '2021-06-21', 103, '234 Maple Wood Circle', '3 Lake View Hill', 213.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (9, '0:13', '23:05', 20, '2021-12-24', 38, '72136 Lighthouse Bay Plaza', '972 Montana Alley', 126.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (10, '1:06', '14:10', 36, '2021-02-11', 100, '88 Sachtjen Road', '0 Sunnyside Trail', 318.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (11, '3:15', '19:16', 27, '2021-06-13', 58, '90786 Warner Hill', '3027 Menomonie Trail', 164.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (12, '4:00', '9:06', 30, '2021-09-25', 51, '16 Leroy Lane', '06149 Moulton Way', 12.6);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (13, '2:00', '12:57', 2, '2021-08-06', 94, '1 Thierer Center', '077 Reinke Way', 89.5);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (14, '0:33', '23:33', 15, '2021-07-23', 48, '5305 Morningstar Junction', '3 Autumn Leaf Trail', 205.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (15, '1:50', '21:31', 3, '2021-08-21', 20, '1 Mifflin Avenue', '212 Loomis Park', 348.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (16, '1:04', '19:37', 26, '2021-06-13', 65, '617 Shasta Street', '82 Sullivan Drive', 283.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (17, '2:50', '13:31', 31, '2021-09-20', 44, '128 Upham Point', '8 Russell Junction', 228.5);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (18, '0:30', '9:44', 9, '2021-04-27', 70, '344 Oneill Alley', '2867 Waxwing Hill', 231.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (19, '3:43', '22:52', 7, '2022-01-15', 15, '29948 Ridgeway Parkway', '6644 Hooker Place', 274.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (20, '2:30', '22:49', 7, '2021-04-05', 45, '87 Melby Plaza', '159 Northport Road', 48.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (21, '4:23', '10:17', 9, '2021-04-03', 118, '0872 Boyd Way', '876 Eggendart Street', 309.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (22, '4:25', '20:21', 8, '2021-07-30', 70, '73 Talisman Pass', '48130 Dorton Street', 349.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (23, '0:56', '23:41', 6, '2021-08-30', 106, '1 Oak Valley Road', '62 Wayridge Street', 112.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (24, '2:26', '18:41', 8, '2021-09-22', 99, '4615 Hoffman Place', '61601 Dexter Way', 301.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (25, '2:06', '22:48', 10, '2022-02-25', 74, '762 Rockefeller Circle', '322 Derek Court', 249.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (26, '0:15', '12:41', 12, '2021-11-02', 60, '44 Banding Way', '077 Mccormick Road', 72.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (27, '2:44', '20:54', 28, '2021-09-11', 23, '0255 Dakota Way', '9 Victoria Place', 2.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (28, '2:28', '17:34', 18, '2021-02-21', 66, '85 Bunting Crossing', '339 Mallory Trail', 244.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (29, '2:53', '6:01', 26, '2021-07-28', 8, '1120 4th Lane', '96923 Westport Circle', 254.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (30, '1:40', '16:38', 31, '2021-10-24', 106, '88 Sheridan Court', '370 Brickson Park Hill', 2.3);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (31, '1:41', '21:33', 35, '2022-01-12', 87, '844 Dawn Hill', '41334 Thompson Circle', 151.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (32, '1:50', '10:48', 6, '2021-07-12', 98, '8047 Arapahoe Trail', '2872 Kenwood Place', 24.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (33, '2:21', '23:28', 27, '2021-03-03', 82, '6208 Susan Plaza', '1 Elka Point', 15.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (34, '1:51', '11:16', 35, '2022-01-10', 30, '59093 Darwin Terrace', '95960 Russell Place', 17.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (35, '2:16', '5:18', 29, '2021-07-11', 117, '0 Utah Hill', '18531 Eliot Plaza', 253.3);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (36, '1:27', '11:31', 38, '2021-04-13', 81, '75905 Rusk Place', '954 Dwight Parkway', 227.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (37, '2:08', '19:23', 19, '2021-08-13', 69, '14 Clarendon Lane', '97416 Mallard Trail', 282.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (38, '3:27', '6:51', 38, '2021-09-17', 36, '89909 Continental Alley', '4 Graceland Circle', 147.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (39, '2:33', '19:11', 19, '2021-06-23', 65, '1 Dwight Hill', '5056 Debra Crossing', 304.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (40, '3:11', '15:16', 28, '2021-07-13', 76, '91 Summit Circle', '835 Sutherland Terrace', 303.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (41, '1:19', '8:01', 1, '2021-12-29', 24, '82029 Loeprich Lane', '108 Forest Run Street', 298.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (42, '1:34', '9:48', 38, '2021-05-26', 111, '415 Bonner Trail', '93 Wayridge Hill', 343.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (43, '1:48', '12:39', 14, '2021-11-21', 79, '82191 Fremont Plaza', '8395 Merrick Lane', 104.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (44, '3:59', '9:51', 15, '2021-03-17', 95, '73 Mockingbird Way', '54 Moose Drive', 270.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (45, '3:46', '6:54', 17, '2021-02-25', 120, '71993 Rusk Circle', '650 Shoshone Park', 329.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (46, '4:31', '9:44', 17, '2021-11-12', 61, '72031 Mccormick Junction', '387 Novick Hill', 45.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (47, '4:47', '14:23', 38, '2021-12-12', 56, '3637 Meadow Vale Hill', '0 Susan Avenue', 291.6);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (48, '1:14', '21:12', 33, '2021-07-26', 99, '3394 Hanover Plaza', '8 Vera Trail', 67.6);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (49, '2:03', '18:31', 32, '2021-08-12', 27, '075 Knutson Lane', '0927 Russell Plaza', 205.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (50, '1:30', '7:22', 39, '2021-12-28', 50, '322 David Drive', '3 Havey Pass', 111.9);


-- update a
-- set a.Age =  
-- from Driver a 
-- inner join Driver b
-- on a.id = b.id; 

-- update Driver m
-- 	inner join Driver e
--     on e.id = m.id
-- set m.Age = datediff( m.DOB    , GETdate() )/365
-- where e.id = m.id;

-- update Driver a, Driver b
-- set a.Age = (UNIX_TIMESTAMP(b.DOB) -
--          UNIX_TIMESTAMP(GETdate()) ) / 3600
-- where a.id = b.id;




insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Urbano Farbrace', '823-132-3758', 'ufarbrace0@51.la', 77, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Zaria Roggeman', '635-611-5071', 'zroggeman1@creativecommons.org', 57, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Mignon Stansbury', '567-723-5032', 'mstansbury2@forbes.com', 44, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Jaquelin Ganny', '599-268-6567', 'jganny3@godaddy.com', 63, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Thea Mowlam', '678-164-9354', 'tmowlam4@google.com.au', 32, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Zia Wardlaw', '174-882-3179', 'zwardlaw5@imgur.com', 57, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Gus Lilleman', '426-298-4159', 'glilleman6@github.com', 42, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Ezri Elen', '122-759-1825', 'eelen7@harvard.edu', 15, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Dolorita Enderson', '891-171-2595', 'denderson8@berkeley.edu', 15, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Ira Lief', '298-418-3268', 'ilief9@163.com', 45, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Niko Heinel', '730-168-2756', 'nheinela@godaddy.com', 28, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Eadith Bancroft', '317-979-6172', 'ebancroftb@tripadvisor.com', 22, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Cicily Pearton', '926-472-6755', 'cpeartonc@wordpress.org', 37, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Ariella Styant', '103-645-0592', 'astyantd@4shared.com', 25, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Elise Tissiman', '279-616-8694', 'etissimane@nih.gov', 44, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Inessa Skinner', '370-524-2227', 'iskinnerf@ovh.net', 61, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Ralf Scherer', '719-167-9469', 'rschererg@sciencedaily.com', 37, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Em Gresley', '544-956-9675', 'egresleyh@mlb.com', 53, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Lilith Libbe', '432-905-5337', 'llibbei@meetup.com', 31, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Hailee Sheahan', '375-176-0347', 'hsheahanj@bizjournals.com', 22, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Bernette Normanville', '856-781-7279', 'bnormanvillek@thetimes.co.uk', 22, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Barbey Sindle', '951-569-1814', 'bsindlel@ameblo.jp', 21, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Annalee Whitemarsh', '131-190-0816', 'awhitemarshm@jigsy.com', 17, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Whitby Forsdicke', '313-244-7274', 'wforsdicken@vk.com', 20, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Willie Klawi', '756-768-8787', 'wklawio@springer.com', 63, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Darcey Alker', '741-795-1306', 'dalkerp@trellian.com', 27, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Brod Blackney', '159-450-3983', 'bblackneyq@apple.com', 80, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Jerry Findlow', '684-977-8591', 'jfindlowr@mtv.com', 30, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Floria Gowry', '819-439-8788', 'fgowrys@hibu.com', 52, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Portia Bertomier', '573-884-7727', 'pbertomiert@gmpg.org', 69, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Bonnie Autry', '415-293-0443', 'bautryu@clickbank.net', 77, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Felicity Gever', '944-397-0498', 'fgeverv@usda.gov', 44, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Lea Goodday', '668-708-9053', 'lgooddayw@smh.com.au', 60, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Alec Mallabone', '158-544-2218', 'amallabonex@nhs.uk', 75, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Benoit Yitzovicz', '500-170-3131', 'byitzoviczy@examiner.com', 69, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Demetre Gravatt', '489-650-9095', 'dgravattz@purevolume.com', 42, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Iolanthe Sandwith', '243-645-3570', 'isandwith10@nyu.edu', 79, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Waylan Deely', '818-471-3656', 'wdeely11@tmall.com', 16, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Tiff Caccavella', '969-992-5827', 'tcaccavella12@canalblog.com', 40, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Tiffany McTerrelly', '381-569-9211', 'tmcterrelly13@addtoany.com', 80, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Hewe O''Dougherty', '735-838-8831', 'hodougherty14@topsy.com', 31, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Graham Lampet', '167-326-3072', 'glampet15@livejournal.com', 73, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Madelene Wathan', '619-746-4883', 'mwathan16@house.gov', 40, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Kathryn Howieson', '147-397-4323', 'khowieson17@fotki.com', 42, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Griffith Baynard', '314-202-7694', 'gbaynard18@ameblo.jp', 42, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Oriana Pittoli', '527-784-3179', 'opittoli19@howstuffworks.com', 39, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Blanch Keats', '323-308-7454', 'bkeats1a@washingtonpost.com', 18, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Bambi Dumingo', '466-321-2518', 'bdumingo1b@scientificamerican.com', 56, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Dael Plampeyn', '526-347-7539', 'dplampeyn1c@photobucket.com', 25, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Karlyn Finessy', '804-182-5727', 'kfinessy1d@ebay.co.uk', 75, 'CASH');


insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WBSCL93401L402164', 'Indigo', false, true, 1987, 'Car', 'Lincoln', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1G6DJ8EY8B0750599', 'Yellow', true, false, 2011, 'Car', 'Toyota', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WAUAFAFC3CN279541', 'Teal', false, true, 2002, 'Car', 'Suzuki', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('JTJBM7FX6C5376121', 'Puce', false, false, 2011, 'Car', 'Jeep', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('3GYEK63N03G441292', 'Teal', true, false, 2012, 'Car', 'Mazda', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('3D7TP2CT4BG863463', 'Maroon', false, true, 2001, 'Car', 'Oldsmobile', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('TRUWT28N321153231', 'Pink', false, true, 2012, 'Car', 'Audi', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1FTSW3A51AE020827', 'Fuscia', false, true, 1995, 'Car', 'Ford', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1D7CW3BK7AS183212', 'Green', false, true, 2012, 'Car', 'Volkswagen', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WBA3A5C53EJ184377', 'Blue', true, true, 2002, 'Car', 'Saturn', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WVGEF9BP9FD668881', 'Yellow', true, false, 1986, 'Car', 'Suzuki', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('19UUA66265A479053', 'Maroon', true, false, 2010, 'Car', 'Volkswagen', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('SALSF2D42AA826143', 'Teal', true, false, 1992, 'Car', 'Oldsmobile', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1G6DL8E34C0285318', 'Teal', true, false, 1998, 'Car', 'Audi', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WBAPL5C58BA283106', 'Mauv', false, true, 2010, 'Car', 'Toyota', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1GTN1TEX2DZ101911', 'Purple', true, true, 2002, 'Car', 'Chevrolet', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WA1CV94L37D377149', 'Purple', true, false, 2000, 'Car', 'Honda', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1B3CB3HA4AD185798', 'Green', true, true, 2006, 'Car', 'Pontiac', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1G6DV5EP2E0061608', 'Yellow', false, false, 2000, 'Car', 'Porsche', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('TRUVD38J791101767', 'Aquamarine', false, false, 1989, 'Car', 'Ford', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1GYFC36239R844774', 'Goldenrod', false, false, 2009, 'Car', 'Ford', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1HGCR2E78EA746980', 'Maroon', false, true, 2002, 'Car', 'Toyota', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1FMJK1F51AE586762', 'Green', false, true, 2009, 'Car', 'Dodge', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WBS3U9C57FJ616402', 'Puce', false, false, 1984, 'Car', 'Mercedes-Benz', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('JTEBU4BF4DK493192', 'Orange', true, true, 2000, 'Car', 'Mazda', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1GD02ZCG9DZ976976', 'Puce', true, true, 2005, 'Car', 'Mercury', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WP0AA2A97DS371015', 'Maroon', false, false, 2002, 'Car', 'Kia', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1D7CW3GK7AS488881', 'Orange', true, false, 2008, 'Car', 'Mercedes-Benz', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1G6DF577180732281', 'Khaki', true, true, 1997, 'Car', 'Acura', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WA1DGAFP5DA072152', 'Orange', true, true, 1996, 'Car', 'BMW', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WAULV44E87N991891', 'Red', true, true, 1961, 'Car', 'Chevrolet', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('19UYA42773A171863', 'Maroon', true, false, 2008, 'Car', 'Land Rover', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1GKS1HE02BR401307', 'Violet', true, true, 1994, 'Car', 'Volkswagen', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WBA3B3G51DN388923', 'Yellow', false, false, 2011, 'Car', 'Lexus', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WAUVFAFH7DN980307', 'Maroon', true, true, 2006, 'Car', 'Maybach', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('3GYFNCEYXBS573179', 'Purple', true, false, 2004, 'Car', 'Mercury', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WAUVC68E72A904230', 'Green', true, false, 1998, 'Car', 'Ford', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('1GYS4KEF5ER135638', 'Violet', true, true, 1995, 'Car', 'Mercury', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WBA3D5C52FK349337', 'Orange', false, false, 2002, 'Car', 'Ford', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WBSKG9C51BE638594', 'Pink', false, true, 2005, 'Car', 'Volkswagen', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WDDGF4HB9EG436179', 'Green', true, false, 1985, 'Car', 'Volkswagen', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WA1YD64B63N753278', 'Mauv', true, true, 2000, 'Car', 'Chrysler', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WDDEJ7KBXBA853714', 'Puce', true, true, 1997, 'Car', 'Chevrolet', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('3GTXKYEJ3AG848329', 'Orange', true, true, 2009, 'Car', 'Mercury', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('19UUA56942A008828', 'Blue', false, false, 1999, 'Car', 'Mercedes-Benz', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('JN1CV6AP6CM827031', 'Blue', true, true, 2008, 'Car', 'BMW', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WDDUG7GB9FA490945', 'Blue', false, false, 2004, 'Car', 'Toyota', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WAUD2AFD6DN711932', 'Purple', true, false, 1990, 'Car', 'Saab', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('5LMJJ3H58BE392677', 'Violet', false, false, 1997, 'Car', 'Dodge', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('WAUKF98E95A803383', 'Red', false, true, 1974, 'Car', 'Pontiac', 'CNG', true);




/*
create table Trip (
	id INT,
	booking_time VARCHAR(50) not null,
	waiting_time VARCHAR(50) not null  ,
	pickup_time VARCHAR(50) not null ,
	trip_date DATE not null,
	total_time DECIMAL(4,2) not null, 
	pickup_location VARCHAR(50) not null,
	drop_location VARCHAR(50) not null,
	distance DECIMAL(5,2) not null,
    
    primary key (id)
);
*/

insert into Transections (transection_id, coupon, mode_of_payment) values ('z8gbwkten665', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('g3ua06i43isc', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('it3lt3wufgrb', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('rorx7r53awwc', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('ab3o2zymwobf', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('9qktcuz8dqp9', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('8mwv5yjsyofz', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('zmwfmculxi45', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('l6rpc8w37214', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('ny5e9pninyo9', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('j231sb7rst8t', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('pcmfy0c2dp9m', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('xg2tlodnijc3', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('zkdjl2cmk4zl', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('q9zx2ak3ml0w', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('v024ewrq8piq', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('v21vzp77hmq7', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('i1kadm8rv8mb', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('m5rorxmkbxqw', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('wxphxwmaduga', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('1r4t2bsbypkh', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('4185pgyuhmla', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('kn23to6e8kna', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('elzlpouam0yb', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('bfg6dji64mqw', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('lkhn5zso0v4b', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('x64x26hj70ke', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('pesv7mk0bhqa', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('zfrkhzpj7cri', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('smurgzlmav60', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('uibvrk12fqrr', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('idtc83ymr8rj', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('n47zu0bgsywh', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('z5eh2vtqwhzz', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('anrqhd6soeue', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('g5bfq5xwvn8j', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('c4m9kmzckifo', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('lf3fa7ysro4y', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('xp5mczgcafe3', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('8iaeonn65ock', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('f9k9qxym4ku1', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('udeywaw2rs75', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('ns53x9l550hf', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('vbptwyb5of97', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('gwe79su9li24', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('7wv3w7cohpgw', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('0avpi0qpc5bi', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('5gk7k6o82rnj', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('f9qmb1znibt7', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('hqcu3f1qkvcn', 'PEHLA_SAFAR_50', 'UPI');

