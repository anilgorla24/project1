*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database    sqlite3    database=C:/Users/HP/OneDrive/Desktop/student.db
Suite Teardown    Disconnect From Database

*** Variables ***
${dbname}        anil
${dbuser}        gorla
${password}        anil123
${dbhost}        localhost

*** Test Cases ***
# create student table
#     ${output}    Execute Sql String    create table student(id integer,name varchar(10),subjet varchar(10))
#     Log To Console       ${output}
#     Should Be Equal As Strings    ${output}    None  

# insert data into student table
#     ${output}    Execute Sql String    insert into student values(101,'anil','english')
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None   

# insert data into student table
#     ${output}    Execute Sql String    insert into student values(102,'Ram','english')
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None 

# insert data into student table
#     ${output}    Execute Sql String    insert into student values(103,'mahi','telugu')
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None    

# insert data into student table
#     ${output}    Execute Sql String    insert into student values(104,'jai','maths')
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None  

# insert data into student table
#     ${output}    Execute Sql String    insert into student values(105,'sweety','hindi')
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None  

# update record 
#     ${output}    Execute Sql String    update student set name='vamsi' where id=103
#     Should Be Equal As Strings    ${output}    None

# update record 
#     ${output}    Execute Sql String    update student set subjet='science' where id=102
#     Should Be Equal As Strings    ${output}    None

# update record 
#     ${output}    Execute Sql String    update student set id=106 where name='sweety'
#     Should Be Equal As Strings    ${output}    None

delete record
    ${output}    Execute Sql String    delete from student where id=106
    Should Be Equal As Strings    ${output}    None
