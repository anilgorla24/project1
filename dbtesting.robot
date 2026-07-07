*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database    sqlite3    database=C:/Users/HP/OneDrive/Desktop/test3.db
Suite Teardown    Disconnect From Database

*** Variables ***
${dbname}        mydb
${dbuser}          myuser
${dbpassword}        mypassword
${dbhost}          localhost

*** Test Cases ***
# create person table
#     ${output}=    Execute Sql String    create table person (id integer, name VARCHAR(20), age INT)
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None

# inserting single record

# insert data into person table
#     ${output}=    Execute Sql String    insert into person values(102,'ram',24)
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None   

# inserting multiple records 
# Insert Multiple Records
#     ${output}=    Execute Sql Script    students.sql
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None

checking hari record is present in person table
    ${output}=    Query    select * from person where name='hari'
    Log To Console    ${output}
    Length Should Be    ${output}    1

checking swati record is not present in person table
    ${output}=    Query    select * from person where name='swati'
    Log To Console    ${output}
    Length Should Be    ${output}    0

check person table exists or not
    Table Must Exist   person

verify row count in person table
    ${output}=    Query    select count(*) from person
    Log To Console    ${output}    

verify row count is equal to some value
   ${output}=    Query    select * from person where name='hari'
    Length Should Be    ${output}    1


Row Count Greater Than
    ${output}=    Query    SELECT COUNT(*) FROM person
    ${count}=     Set Variable    ${output[0][0]}
    Should Be True    ${count} > 4  

row Count Less Than
    ${output}=    Query    SELECT COUNT(*) FROM person
    ${count}=     Set Variable    ${output[0][0]}
    Should Be True    ${count} < 6

Update Record
    ${output}=    Execute Sql String    UPDATE person SET name='jio' WHERE id=104
    Should Be Equal As Strings    ${output}    None 

Showing all the Data
    ${result}=    Query    SELECT * FROM person
    Log To Console    ${result}    

delete record
    ${output}=    Execute Sql String    DELETE FROM person
    Should Be Equal As Strings    ${output}    None    