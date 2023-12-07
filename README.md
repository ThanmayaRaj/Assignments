# Assignments

*Prerequisites : 
    Install Node version 14+

*To install dependencies run following commands:
    1. npm install
    2. npx playwright install


*To run tests:
    npm test
    or
    npx codeceptjs run --plugins allure


*To see reports, run:
    allure serve output


################___Docker____############: 
#I am using Windows OS

*To BUILD docker image:
    docker build -t codeceptjs-tests .

*To RUN docker image:
    docker run codeceptjs-tests

#Attaching Report screenschot with the file name : Report.dox

