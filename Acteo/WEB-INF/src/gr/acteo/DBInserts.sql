-- DatabaseInserts.sql
--
-- Initial data insertion to ACTEO's database for testing
-- purposes, created for the group assignment
-- of the Information Systems Implementation and
-- Architecture module of the Department of Management
-- Science and Technology of the Athens University of
-- Economics and Business. It creates three tables, one
-- for Individual users, one for corporate users and one
-- for the connection of "interest" between them.
--
-- @author Katsigiannis Fotis
-- @author Lattas Alexandros
-- @date 03/11/2016
--
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Inserts to User
-- -----------------------------------------------------

INSERT INTO  `ismgroup39`. `user`
  (Email,Password)
VALUES
  ('test1@test.com','1234')

INSERT INTO  `ismgroup39`. `user`
  (Email,Password)
VALUES
  ('test2@test.com','1234')

INSERT INTO  `ismgroup39`. `user`
  (Email,Password)
VALUES
  ('corp1@test.com','1234')



-- -----------------------------------------------------
-- Inserts to Individual
-- -----------------------------------------------------

INSERT INTO `ismgroup39`.`individual`
	(Email,Name,Surname,Age,Gender,Specialty,CV,SB,Photo)
VALUES ('test1@test.com','Fotis', 'Katsigiannis', '1995-11-23', 'Male', 'Captain A',
	'http://ism.dmst.aueb.gr/ismgroup39/CVs/1.pdf',
	'http://ism.dmst.aueb.gr/ismgroup39/CVs/n1.pdf',
	'http://ism.dmst.aueb.gr/ismgroup39/CVs/1.jpg');

INSERT INTO `ismgroup39`.`individual`
	(Email,`Name`,Surname,Age,Gender,Specialty,CV,SB,Photo)
VALUES ('test2@test.com','Alexandros', 'Lattas', '1995-01-31', 'Male', 'Captain A',
	'http://ism.dmst.aueb.gr/ismgroup39/CVs/2.pdf',
	'http://ism.dmst.aueb.gr/ismgroup39/CVs/n2.pdf',
	'http://ism.dmst.aueb.gr/ismgroup39/CVs/1.jpg');

-- -----------------------------------------------------
-- Inserts to Individual
-- -----------------------------------------------------

INSERT INTO `ismgroup39`.`corporation`
	(Email,`Name`,logo,description,website)
VALUES ('corp1@test.com','ACME',
	'http://ism.dmst.aueb.gr/ismgroup39/CVs/acme.jpg',
	'The Acme Corporation is a fictional corporation that features prominently
	in the Road Runner/Wile E. Coyote cartoons as a running gag featuring
	outlandish products that fail or backfire catastrophically at the worst
	possible times.',
	'http://www.acme.org');

-- -----------------------------------------------------
-- Inserts to Interest
-- -----------------------------------------------------

INSERT INTO `ismgroup39`.`interest`
	(indEmail,corEmail)
VALUES ('test1@test.com','corp1@test.com')
