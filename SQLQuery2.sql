Declare @a int 
      , @b int;

set @a = 20;
set @b = 10;

IF @a > @b
	BEGIN
		PRINT 'Yes A is greater than B'
	END
	-------------------------------

Declare @year int;
set @year =201;

IF @year >= 2000
    BEGIN
        PRINT '21st century'
    END

ELSE
    BEGIN
        PRINT '20th century or earlier'
    END

	----------------------------------
Declare  @score int;
set @score = 80;

IF @score >= 90
	BEGIN
		PRINT 'Grade A'
	END
ELSE
	BEGIN
		IF @score >= 80
			BEGIN
				PRINT 'Grade B'
			END
		ELSE
			BEGIN
				PRINT 'Grade C or lower'
			END
	END
	------------------Using IF with Variables and Conditional Assignments-----------------------
	DECLARE @age INT;
SET @age = 25;


IF @age >= 18
BEGIN
    PRINT 'Adult'
END
ELSE
BEGIN
    PRINT 'Minor'
END
--------
DECLARE @max INT;
Declare @a int, @b int;
set @a = 20;
set @b=10;

----Conditional assingment
IF @a > @b
    SET @max = @a
ELSE
    SET @max = @b

Print @max;

----