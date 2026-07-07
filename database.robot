*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem   
Suite Setup     Connect To Database    sqlite3    database=C:/Users/HP/OneDrive/Desktop/test4.db
Suite Teardown    Disconnect From Database

*** Test Cases ***
create emp2 table
    ${output}=    Execute Sql String    CREATE TABLE emp2 (id integer PRIMARY KEY, name VARCHAR(20), age INT)
    Log To Console   ${output} 
    should Be Equal As Strings    ${output}    None  

insert data into emp2 table 
    ${output}=    Execute Sql String    INSERT INTO emp2 VALUES(102,'ram',23)
    Log To Console   ${output} 
    should Be Equal As Strings    ${output}    None 

insert data into emp2 table 
    ${output}=    Execute Sql String    insert into emp2 values(103,'hari',24)
    Log To Console   ${output} 
    should Be Equal As Strings    ${output}    None

insert data into emp2 table 
    ${output}=    Execute Sql String    insert into emp2 values(104,'mouni',21)
    Log To Console   ${output} 
    should Be Equal As Strings    ${output}    None

insert data into emp2 table 
    ${output}=    Execute Sql String    insert into emp2 values(105,'madhu',22)
    Log To Console   ${output} 
    should Be Equal As Strings    ${output}    None


# update record in emp1 table
#     ${output}=    Execute Sql String    update emp1 set age=25 where name='hari'
#     Log To Console   ${output} 
#     should Be Equal As Strings    ${output}    None

# delete record from emp1 table
#     ${output}=    Execute Sql String    delete from emp1 where id=105
#     Log To Console   ${output} 
#     should Be Equal As Strings    ${output}    None

# delete all records from emp1 table
#     ${output}=    Execute Sql String    delete from emp1
#     Log To Console   ${output} 
#     should Be Equal As Strings    ${output}    None

# insert multiple records into emp1 table
#     ${output}=    Execute Sql Script    students.sql
#     Log To Console   ${output} 
#     should Be Equal As Strings    ${output}    None