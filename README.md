```
As a user
So that I can see all the websites I bookmarked
I want to see a list of the links from the database.
```

```
As a user
So that I can bookmark a new website
I want to add a new link
```
```
As a user
So that I can organise my bookmarks
I want to be able to tag a link.
```
```
As a user
So that I can find a specific link
I want to filter my links by tag.
```

-----------

CRUD
----

Create
Read
Update
Delete

Are the basic four functions of persistent storage.

SQL
---
Structured
Query
Language


SQL stands for Structured Query Language  
SQL lets you access and manipulate databases  
It's a standardized language used to communicate with databases based on the relational model.

What can SQL do?
- SQL can execute queries against a database
- SQL can retrieve data from a database
- SQL can insert records in a database
- SQL can update records in a database
- SQL can delete records from a database
- SQL can create new databases
- SQL can create new tables in a database
- SQL can create stored procedures in a database
- SQL can create views in a database
- SQL can set permissions on tables, procedures, and views
- SQL examples for each CRUD action
----
Create => INSERT  
```SQL
INSERT INTO <table name> VALUES ('<name>');
```  
Read => SELECT  
```SQL
SELECT * FROM <database name>;
```
Update => UPDATE   
```SQL
UPDATE <table name> SET <column name> = '<name>' WHERE <id> = <number>;
```
Delete => DELETE  
```SQL
DELETE FROM <table name> WHERE <id> = <number>;
```
