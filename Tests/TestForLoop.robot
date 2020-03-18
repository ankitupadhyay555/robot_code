{
    first_name: 'joydeep',
    last_name: 'das',
        address: {
            street: '#60',
            city: 'bangalore',
            pin: '560015'
            }
    gender: 'male'
}


Output:

Name: "Joydeep Das"
Address: "#60 bangalore 560015"
Gender: Male


*** Test Cases ***
For loop under for loop
    : For   ${i}    IN RANGE    0   10
    \   log to console  ${i}