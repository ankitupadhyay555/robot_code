
*** Test Cases ***
#For loop 1
#    : For    ${i}   IN RANGE    1   10
#    \   log to console  ${i}

#For loop 2
#    : For   ${i}    IN  1 2 3 4 5 6 7 8 9
#    \   log to console  ${i}

#For loop 3
#    : For   ${i}    IN  1  2  3  4  5  6  7  8  9
#    \   log to console  ${i}

#For loop 4 in list
#    @{items}    create list     1 2 3 4 5 6 7 8
#    : For   ${i}    IN   @{items}
#    \   log to console  ${i}

#For loop 5
#    :For    ${i}    In  john    scott   smith   david
#    \   log to console  ${i}
#
#For loop 6
#    @{list}     create list     john    scott   smith   david
#    :For    ${i}    in  @{list}
#    \   log to console  ${i}

For loop 6 with Exit
    @{items}    create list     1   2   3   4   5
    log to console  ${items}
    : For    ${i}    IN  @{items}
    \   log to console  ${i}
    \   exit for loop if    ${i}==3