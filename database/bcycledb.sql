--
-- This sql file create the bcycle station table and populates it
-- with data for Houston and Denver.
--
-- The bcycle database is created via the database startup scripts.
--

--
-- check to see if the table is there
--
drop table if exists station;

--
-- create the bcycle station table
--
create table station (
    id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    street varchar(256),
    city varchar(256),
    state varchar(2),
    zip varchar(10),
    docks int(11),
    latitude double,
    longitude double,
    created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)

    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Populate the station table with data for Houston and Denver
--

INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Market Street Station','1600 Market St','Denver','CO','80202',21,39.7498805,-104.9982723);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('9th and Santa Fe','923 W 9th Ave','Denver','CO','80204',15,39.7307002,-104.999176);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Louisiana Pearl Light Rail','1300 S Washington St','Denver','CO','80210',15,39.6929909,-104.9792573);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('16th and Platte','1601 Platte St','Denver','CO','80202',19,39.757967,-105.007862);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('19th and Pearl','620 E 19th Ave','Denver','CO','80203',23,39.7461643,-104.979648);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('7th and Grant','721 Grant St','Denver','CO','80203',15,39.7276625,-104.9836465);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('1551 Lafayette','1551 Lafayette St','Denver','CO','80218',17,39.7409638,-104.9709401);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('16th and Broadway','1600 Broadway','Denver','CO','80202',11,39.7421039,-104.986981);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Bayaud and Emerson','910 E Bayaud Ave','Denver','CO','80209',19,39.71469889999999,-104.9767953);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Buchtel and High Light Rail','1901 Buchtel Blvd','Denver','CO','80210',19,39.684543,-104.9638638);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Denver Museum of Nature and Science','2001 Colorado Blvd','Denver','CO','80205',21,39.747597,-104.9429463);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('13th and Pearl','1291 Pearl St','Denver','CO','80203',13,39.736697,-104.980189);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Denver Public Library','100 W 13th Ave','Denver','CO','80204',19,39.7368443,-104.9888296);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Denver Zoo','2300 Steele St','Denver','CO','80205',22,39.7492949,-104.950065);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('16th and Little Raven','1600 Little Raven','Denver','CO','80202',13,39.7548559,-105.0047869);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('11th and Broadway','1085 Broadway','Denver','CO','80204',11,39.7334805,-104.9878283);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('10th and Osage','1005 Osage St','Denver','CO','80204',15,39.732204,-105.0052838);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('1st and Broadway','10 W 1st Ave','Denver','CO','80223',22,39.7182707,-104.9879945);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('18th and California','1799 California St','Denver','CO','80202',11,39.7470577,-104.989796);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('9th and Curtis','899 Curtis St','Denver','CO','80204',17,39.7421294,-105.0043755);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('15th and Curtis','1501 Curtis St','Denver','CO','80202',15,39.7462962,-104.9960119);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('1550 Glenarm','1550 Glenarm Pl','Denver','CO','80202',13,39.7433859,-104.9910035);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('12th and Sherman','1220 Sherman St','Denver','CO','80203',13,39.7356096,-104.98484);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('17th and Downing','1100 E 17th Ave','Denver','CO','80218',15,39.7430341,-104.9731628);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('9th and Downing','920 Downing St','Denver','CO','80218',11,39.730794,-104.9729385);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('2045 Franklin','2045 Franklin St','Denver','CO','80205',13,39.7475852,-104.969603);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Ellsworth and Madison','10 S Madison St','Denver','CO','80209',11,39.715953,-104.945824);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('32nd and Clay','3199 Clay St','Denver','CO','80211',18,39.7620122,-105.0205384);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Denver Health','777 Bannock St','Denver','CO','80204',11,39.72811919999999,-104.9910209);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Cherry Creek Mall','2800 E 1st Ave','Denver','CO','80206',15,39.716778,-104.954618);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('28th and Larimer','2751 Larimer St','Denver','CO','80206',9,39.760447,-104.9834149);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Florida and S Pearl','650 E Florida Ave','Denver','CO','80210',9,39.6893816,-104.9798263);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('16th and Sherman','1625 Sherman St','Denver','CO','80203',13,39.7421878,-104.9848781);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('22nd and Market','2200 Market St','Denver','CO','80205',13,39.755757,-104.99021);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Broadway and Walnut','2490 N Broadway','Denver','CO','80205',13,39.7578932,-104.9873729);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('12th and Columbine','2502 E 12th Ave','Denver','CO','80206',13,39.73512940000001,-104.9573823);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('1450 Wazee','1450 Wazee St','Denver','CO','80202',11,39.7499241,-105.001673);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('9th and Logan','899 Logan St','Denver','CO','80203',15,39.7301824,-104.9827186);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('13th and Marion','1279 Marion St','Denver','CO','80218',15,39.7367134,-104.971974);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('13th and Speer','1301 Speer Blvd','Denver','CO','80204',17,39.7372883,-104.9971652);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('17th and Franklin','1695 Franklin St','Denver','CO','80218',14,39.7431862,-104.9684631);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('18th and Arapahoe','1800 Arapahoe St','Denver','CO','80202',18,39.7497668,-104.9931867);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Union Station Light Rail at 17th St','2050 17th St','Denver','CO','80202',17,39.7544544,-105.0020389);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Louisiana and Franklin','1600 E Louisiana Ave','Denver','CO','80210',18,39.6929368,-104.9687214);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('17th and Curtis','950 17th St','Denver','CO','80202',19,39.7476454,-104.9937499);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Colfax and Columbine','2451 E Colfax Ave','Denver','CO','80206',15,39.7401873,-104.9580706);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('14th and Welton','890 14th St','Denver','CO','80202',19,39.7442288,-104.9962604);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('17th and Blake','1509 17th St','Denver','CO','80202',19,39.7518141,-104.9980546);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('15th and Delgany','1515 Delgany St','Denver','CO','80202',7,39.7527322,-105.0034866);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('16th and Boulder','1615 Boulder St','Denver','CO','80211',15,39.759735,-105.010382);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('11th and Emerson','900 E 11th Ave','Denver','CO','80218',11,39.7332251,-104.9758516);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('17th and Race','2001 E 17th Ave','Denver','CO','80206',15,39.7434147,-104.9632721);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('19th and Wynkoop','1900 Wynkoop St','Denver','CO','80202',11,39.7547735,-104.9971805);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('6th and Clarkson','771 E 6th Ave','Denver','CO','80203',17,39.7256356,-104.9779355);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Colfax and Gaylord','1490 Gaylord St','Denver','CO','80206',15,39.7398023,-104.961013);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('4th and Walnut','398 Walnut St','Denver','CO','80204',9,39.7429875,-105.0123849);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Five Points','2700 Welton St','Denver','CO','80205',7,39.7547809,-104.978032);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Webb Building','201 W Colfax Ave','Denver','CO','80202',11,39.7408296,-104.9900298);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('3rd and Milwaukee','299 Milwaukee St','Denver','CO','80206',15,39.7201882,-104.9525558);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Colfax and Steele','1509 Steele St','Denver','CO','80206',22,39.7403328,-104.9500923);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('32nd and Julian','3199 Julian St','Denver','CO','80211',23,39.76213389999999,-105.0322715);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('14th and Ogden','1425 Ogden St','Denver','CO','80218',13,39.7389059,-104.9753233);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Denver Botanic Gardens','1151 York St','Denver','CO','80206',19,39.7344636,-104.9601492);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('14th and Champa','700 14th St','Denver','CO','80202',23,39.7424762,-104.9965108);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('20th and Chestnut','2095 Chestnut Pl','Denver','CO','80202',15,39.7580221,-104.9981656);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('15th and Cleveland','101 W Colfax Ave','Denver','CO','80202',11,39.7408346,-104.988205);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('14th and Elati','400 W 14th Ave','Denver','CO','80204',11,39.738443,-104.992943);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Bayaud and Pennsylvania','525 E Bayaud Ave','Denver','CO','80209',11,39.71474,-104.9809917);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('17th and Pearl','523 E 17th Ave','Denver','CO','80203',17,39.7435209,-104.9803649);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('17th and Larimer','1281 17th St','Denver','CO','80202',15,39.75006,-104.9960782);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('19th and Market','1899 Market St','Denver','CO','80202',15,39.7526954,-104.9947032);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('23rd and Clay','2301 Clay St','Denver','CO','80211',13,39.751463,-105.0208509);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Colfax and Garfield','1535 Garfield St','Denver','CO','80206',17,39.7408034,-104.94424);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('17th St and Tejon','2701 17th St','Denver','CO','80211',17,39.761602,-105.010789);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Park Ave West and Tremont','355 Park Ave W','Denver','CO','80205',15,39.7494285,-104.9807322);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('REI','1416 Platte St','Denver','CO','80202',19,39.7555992,-105.0097781);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('22nd and Pennsylvania','301 22nd St','Denver','CO','80205',15,39.7481366,-104.9814577);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('1350 Larimer','1350 Larimer St','Denver','CO','80202',15,39.7465832,-105.0009917);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('25th and Lawrence','2500 Lawrence St','Denver','CO','80205',9,39.7569234,-104.985707);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Pepsi Center','1000 Chopper Cir','Denver','CO','80204',17,39.7486389,-105.0075285);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('DU Driscoll Center','2000 E Asbury Ave','Denver','CO','80210',15,39.6795255,-104.9634543);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('33rd and Arapahoe','3310 Arapahoe St','Denver','CO','80205',13,39.76389400000001,-104.9749502);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('29th and Zuni','2417 W 29th Ave','Denver','CO','80211',17,39.75886149999999,-105.0168286);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('11th and Delaware','1095 Deleware St','Denver','CO','80204',13,39.733818,-104.9929774);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('City Hall','473 McKinney','Houston','TX','77002',1,29.7597102,-95.3694494);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Dallas & Smith','579 Dallas','Houston','TX','77002',2,29.7576363,-95.36968540000001);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Elgin & Smith','612 Elgin St','Houston','TX','77006',16,29.743637,-95.3804116);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Ensemble/HCC','1098 Holman st','Houston','TX','77004',3,29.7392382,-95.37767919999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Freed Library','4100 Montrose','Houston','TX','77006',4,29.7355032,-95.391542);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Lamar & Crawford','1177 Crawford St','Houston','TX','77010',5,29.7525152,-95.3608125);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('La Branch & Lamar','1075 La Branch','Houston','TX','77010',6,29.7537844,-95.3610471);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Lake Plaza at Houston Zoo','6100 Hermann Park Drive','Houston','TX','77030',7,29.7169557,-95.389596);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Lamar & Milam','782 Lamar','Houston','TX','77002',8,29.7573216,-95.3674056);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Leonel Castillo Community Center','2109 South St.','Houston','TX','77009',9,29.7784669,-95.3667919);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Main & Dallas','1250 Main','Houston','TX','77002',10,29.7550717,-95.3663816);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Market Square Park','864 Congress Street','Houston','TX','77002',11,29.7629492,-95.3619511);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('McKinney & Caroline','1248 McKinney','Houston','TX','77010',12,29.7556445,-95.36277919999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Menil Collection','1529 W. Alabama St.','Houston','TX','77006',13,29.7386819,-95.39881179999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('METRO Transit Center','1900 Main','Houston','TX','77002',14,29.7501492,-95.37101609999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('MFAH/Fannin & Binz','5623 Fannin','Houston','TX','77004',15,29.7250075,-95.38893999999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Milam & Webster','2215 Milam St.','Houston','TX','77002',17,29.7487508,-95.3739593);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Project Row House','2521 Holman St.','Houston','TX','77004',18,29.7318546,-95.3649466);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Rusk & St. Emanuel','736 St. Emanuel','Houston','TX','77003',19,29.7532364,-95.3539449);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Sabine Bridge','190 Sabine','Houston','TX','77007',20,29.7618301,-95.37543769999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Smith & Capitol','612 Smith','Houston','TX','77002',21,29.7618848,-95.366433);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Spotts Park','401 S. Heights Blvd.','Houston','TX','77007',22,29.7656344,-95.3964403);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Stude Park','2300 Forester','Houston','TX','77007',23,29.7794565,-95.3854259);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Taft & Fairview','2401 Taft St.','Houston','TX','77006',24,29.7480217,-95.3855447);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Tellepsen YMCA','1621 Milam','Houston','TX','77002',25,29.7528474,-95.3703603);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('UHD/Main & Franklin','100 Main Street','Houston','TX','77002',26,29.7637756,-95.3596317);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('West Gray & Baldwin','208 W. Gray','Houston','TX','77002',27,29.75253189999999,-95.3777317);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Westheimer & Waugh','1111 Westheimer','Houston','TX','77002',28,29.74436619999999,-95.39287650000001);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('1919 Runnels','1919 Runnels','Houston','TX','77002',29,29.7635739,-95.3518464);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('City Hall','473 McKinney','Houston','TX','77002',1,29.7597102,-95.3694494);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Dallas & Smith','579 Dallas','Houston','TX','77002',2,29.7576363,-95.36968540000001);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Elgin & Smith','612 Elgin St','Houston','TX','77006',16,29.743637,-95.3804116);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Ensemble/HCC','1098 Holman st','Houston','TX','77004',3,29.7392382,-95.37767919999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Freed Library','4100 Montrose','Houston','TX','77006',4,29.7355032,-95.391542);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Lamar & Crawford','1177 Crawford St','Houston','TX','77010',5,29.7525152,-95.3608125);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('La Branch & Lamar','1075 La Branch','Houston','TX','77010',6,29.7537844,-95.3610471);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Lake Plaza at Houston Zoo','6100 Hermann Park Drive','Houston','TX','77030',7,29.7169557,-95.389596);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Lamar & Milam','782 Lamar','Houston','TX','77002',8,29.7573216,-95.3674056);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Leonel Castillo Community Center','2109 South St.','Houston','TX','77009',9,29.7784669,-95.3667919);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Main & Dallas','1250 Main','Houston','TX','77002',10,29.7550717,-95.3663816);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Market Square Park','864 Congress Street','Houston','TX','77002',11,29.7629492,-95.3619511);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('McKinney & Caroline','1248 McKinney','Houston','TX','77010',12,29.7556445,-95.36277919999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Menil Collection','1529 W. Alabama St.','Houston','TX','77006',13,29.7386819,-95.39881179999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('METRO Transit Center','1900 Main','Houston','TX','77002',14,29.7501492,-95.37101609999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('MFAH/Fannin & Binz','5623 Fannin','Houston','TX','77004',15,29.7250075,-95.38893999999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Milam & Webster','2215 Milam St.','Houston','TX','77002',17,29.7487508,-95.3739593);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Project Row House','2521 Holman St.','Houston','TX','77004',18,29.7318546,-95.3649466);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Rusk & St. Emanuel','736 St. Emanuel','Houston','TX','77003',19,29.7532364,-95.3539449);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Sabine Bridge','190 Sabine','Houston','TX','77007',20,29.7618301,-95.37543769999999);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Smith & Capitol','612 Smith','Houston','TX','77002',21,29.7618848,-95.366433);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Spotts Park','401 S. Heights Blvd.','Houston','TX','77007',22,29.7656344,-95.3964403);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Stude Park','2300 Forester','Houston','TX','77007',23,29.7794565,-95.3854259);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Taft & Fairview','2401 Taft St.','Houston','TX','77006',24,29.7480217,-95.3855447);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Tellepsen YMCA','1621 Milam','Houston','TX','77002',25,29.7528474,-95.3703603);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('UHD/Main & Franklin','100 Main Street','Houston','TX','77002',26,29.7637756,-95.3596317);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('West Gray & Baldwin','208 W. Gray','Houston','TX','77002',27,29.75253189999999,-95.3777317);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('Westheimer & Waugh','1111 Westheimer','Houston','TX','77002',28,29.74436619999999,-95.39287650000001);
INSERT INTO `station` (`Name`,`Street`,`City`,`State`,`Zip`,`Docks`,`Latitude`,`Longitude`) VALUES ('1919 Runnels','1919 Runnels','Houston','TX','77002',29,29.7635739,-95.3518464);
