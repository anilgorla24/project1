*** Test Cases ***
 For Loop 1
    FOR   ${i}   IN RANGE   1   10
        Log to console  ${i}
    END


For loop 2
    FOR   ${i}   IN    1  2  3  4  5  6  7  8 
        Log To Console   ${i}
    END   


For loop 3 with list
    @{list}=   Create List   1   2   3   4   5   6   7   8
    FOR   ${i}   IN    @{list}
        Log To Console   ${i}
    END
      

For loop 4 with names
    FOR   ${i}    IN   anil  gorla  ram  pavan
        Log To Console   ${i}
    END    


For loop 5 with list
    @{names}=   Create List   anil   gorla   ram   pavan
    FOR   ${i}    IN    @{names}
        Log To Console   ${i}
    END


For loop 6 with exit condition
    FOR  ${i}   IN    1  2  3  4  5  6  7  8  9
        Log To Console   ${i}
        Exit For Loop If    ${i} == 5
    END