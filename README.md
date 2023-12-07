# Assignments

Prerequisites : 
Install Node version 14+

To install dependencies run following commands:
npm install
npx playwright install


To run tests:
npm test
or
npx codeceptjs run --plugins allure


To see reports, run:
allure serve output


Docker: 
#I am using Windows OS

To Build docker image:
docker build -t codeceptjs-tests .

To run docker image:

docker run codeceptjs-tests


