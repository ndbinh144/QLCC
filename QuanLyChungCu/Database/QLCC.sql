use QLCC
GO
CREATE TABLE ACCOUNT(
	ID INT  NOT NULL IDENTITY(1,1),
	USERNAME VARCHAR(50)NOT NULL,
	PASS VARCHAR(100) NOT NULL,
	STATUS INT DEFAULT 1,--0:BLOCK, 1: CHƯA BLOCK,
	TYPE_AC INT NOT NULL--0:ADMIN, 1: STAFF, 2: CUSTOMER, 3:manager
	PRIMARY KEY(ID)
)
INSERT INTO ACCOUNT(USERNAME, PASS,TYPE_AC) VALUES('admin','admin', 0)
go

INSERT INTO ACCOUNT(USERNAME, PASS,TYPE_AC) VALUES('staff','staff', 1)
go
INSERT INTO ACCOUNT(USERNAME, PASS,TYPE_AC) VALUES('customer','customer', 2)
go
INSERT INTO ACCOUNT(USERNAME, PASS,TYPE_AC) VALUES('manager','manager', 3)
GO
CREATE TABLE CUSTOMER(
	ID INT  NOT NULL IDENTITY(1,1),
	NAME NVARCHAR(100),
	ADDRESS NVARCHAR(255),
	PHONE VARCHAR(10),
	ID_CARD VARCHAR(10),--CMND
	ID_ACC INT NOT NULL,
	ID_APART INT NOT NULL,
	STATUS INT, --0:DELETE,
	PRIMARY KEY(ID)
)
GO
INSERT INTO CUSTOMER(NAME, ADDRESS, PHONE, ID_CARD, ID_ACC, ID_APART, STATUS) VALUES('Nguyễn Văn A', 'Tân Bình', '123456789', '123456789', 3,1,1)

CREATE TABLE USERS(
	ID INT  NOT NULL IDENTITY(1,1),
	NAME NVARCHAR(100),
	ADDRESS NVARCHAR(255),
	PHONE VARCHAR(10),
	ID_CARD VARCHAR(10),--CMND
	ID_ACC INT NOT NULL,
	TYPE INT NOT NULL,--0:MANAGER, 1--STAFF
	STATUS INT, --0:DELETE,
	PRIMARY KEY(ID)
)
GO
INSERT INTO USERS(NAME, ADDRESS, PHONE, ID_CARD, ID_ACC, TYPE, STATUS) VALUES('Nguyễn Văn b', 'Tân Bình', '123456789', '123456789', 4,0,1)
go
INSERT INTO USERS(NAME, ADDRESS, PHONE, ID_CARD, ID_ACC, TYPE, STATUS) VALUES('Nguyễn Văn b', 'Tân Bình', '123456789', '123456789', 2,1,1)
CREATE TABLE APARTMENT(
	ID INT  NOT NULL IDENTITY(1,1),
	NAME VARCHAR(10) NOT NULL,
	ADDRESS NVARCHAR(255),
	CURRENT_SALE_PRICE BIGINT,
	CURRENT_RENT_PRICE BIGINT,
	IMAGE IMAGE,
	PRE_ELECTRIC INT,
	PRE_WATER INT,
	STATUS INT NOT NULL, --0:RENT, 1:SALE, 2:BLANK
	DATE_RENT DATETIME,
	RENT_MONTH INT,
	PRIMARY KEY(ID)
)
GO
INSERT INTO APARTMENT(NAME, ADDRESS, CURRENT_RENT_PRICE, CURRENT_SALE_PRICE, STATUS) VALUES('CH_01', 'Tầng trệt', 3000000, 50000000, 2)
go
CREATE TABLE CONTACT(
	ID INT  NOT NULL IDENTITY(1,1),
	NAME NVARCHAR(255),
	ID_CUS INT NOT NULL,
	ID_APART INT NOT NULL,
	ID_USER INT NOT NULL,
	CREATE_DATE DATETIME NOT NULL,
	PRICE BIGINT,
	STATUS INT, --0:DELETE,
	PRIMARY KEY(ID)
)
GO

CREATE TABLE SERVICE(
	ID INT  NOT NULL IDENTITY(1,1),
	NAME NVARCHAR(255),
	PRICE BIGINT,
	STATUS INT, --0:DELETED,
	PRIMARY KEY(ID)
)
GO
INSERT INTO SERVICE(NAME, PRICE) VALUES('DỌN NHÀ', 200000)
GO
INSERT INTO SERVICE(NAME, PRICE) VALUES('LAU NHÀ', 200000)
GO
CREATE TABLE BILL(
	ID INT  NOT NULL IDENTITY(1,1),
	PRICE BIGINT,
	ID_SERVICE INT,
	ID_APART INT NOT NULL,
	ID_CUS INT NOT NULL,
	SERVICE_PRICE BIGINT,
	PRE_ELECTRIC INT,
	PRE_WATER INT,
	CUR_ELECTRIC INT,
	CUR_WATER INT,
	TOTAL_PRICE BIGINT,
	CREATE_DATE DATETIME,
	STATUS INT, --0:DELETED,
	PRIMARY KEY(ID)
)
GO

