--create table Persons
--(
--Person_ID int  primary key,
--FirstName nvarchar(40) not null,
--LastName nvarchar(40) not null,
--Country nvarchar(40) not null,
--City nvarchar (20) not null,
--street nvarchar(20) not null,
--Phone nvarchar (25) 
--)
--create table Clients
--(
--Client_ID int not null primary key,
--Person_ID int not null,
--AccountNumber NVARCHAR(20) NOT NULL UNIQUE,
--Email NVARCHAR(70) NOT NULL,
--PinCode NVARCHAR(20) NOT NULL,
--Balance money not null,
--Phone nvarchar (15) ,
-- FOREIGN KEY (Person_ID) REFERENCES Persons(Person_ID)
--)
--create table Users
--(
--User_ID int not null primary key,
--Person_ID int not null,
--Email nvarchar(30) not null,
--Password nvarchar(30) not null,
--Permission int not null,
--Phone nvarchar (35) ,

-- FOREIGN KEY (Person_ID) REFERENCES Persons(Person_ID)

--)
--create table Login_Logout_User
--(
--ID int not null primary key,
--LOGIN datetime not null,
--LOGOUT datetime  null,
--User_ID int not null,
-- FOREIGN KEY ([User_ID]) REFERENCES Users([User_ID])
--)

--create table TransactionTypes
--(
--TransactionTypeID int not null primary key,
--TransactionName Nvarchar(30) not null,

--)

--create table Transactions
--(

--TransactionID int not null primary key,
--User_ID int not null,
--Person_ID int not null,
--RecieverID int ,
--SenderID int ,
--TransactionTypeID int not null,
----SenderAmountAfter double not null,
----SenderAmountBefore double not null,
-- Amount DECIMAL(12, 2) NOT NULL,
-- TransactionDateTime DATETIME NOT NULL,
----RecieverAmountAfter double not null,
----RecieverAmountAfter double not null,


-- FOREIGN KEY (SenderID) REFERENCES Clients(Client_ID),
-- FOREIGN KEY (RecieverID) REFERENCES Clients(Client_ID),
-- FOREIGN KEY (TransactionTypeID) REFERENCES TransactionTypes(TransactionTypeID),
-- FOREIGN KEY ([User_ID]) REFERENCES Users([User_ID])

--)
----------------------------------
--SELECT * FROM USERS WHERE USER_ID=1;

--select * from Clients ;
--select * from Users ;
--select * from Transaction_Types ;
--select * from Transactions ;
--select * from Users_Login_Logout ;





Select * from UserPersonView 