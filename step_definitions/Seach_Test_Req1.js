const { I } = inject();
const { ValidateThumbNails } = require("./../commUtils")

Given('Launch the website and Enter the text on Search bar "{word}"', (searchText) => {
  I.amOnPage("/");
  I.fillField("searchText", searchText); 
});

When('Search the content by pressing enter and validate landing on Search page "{word}"', (searchText) => {
  I.pressKey("Enter"); // You can click on search button here
  I.waitForURL("https://www.oranum.com/en/experts/" + searchText);
})

Then('Garb all the names tags and verify if it contains the searched word "{word}"', async (searchText) => {

  const elements = locate("div .thumb-data-item--name");
  const Names = (await I.grabTextFromAll(elements));

  const noOfVisibleElements = await I.grabNumberOfVisibleElements(elements);
  console.log("no of matching psychics with names conating \"" + searchText + "\" is : ", noOfVisibleElements);
  console.log("These are the names that are captured is :" + Names)
  ValidateThumbNails(I, searchText, "div .thumb-data-item--name")
})
