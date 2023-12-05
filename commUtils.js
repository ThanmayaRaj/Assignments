const checkForMatchingTag = async (I) => {

   
    let elements = locate("div .thumb-data-willingness-list");
    I.waitForElement(elements, 20);
    const allTags = await I.grabTextFromAll(elements);
    console.log(allTags);
    let isMatching = true;
    for (let i = 0; i < allTags.length; i++) {
        if (
            allTags[i] &&
            !allTags[i].toLowerCase().includes(tagName.toLowerCase())
        ) {
            isMatching = false;
            break;
        }
    }
    I.assert(isMatching, true, "Unmachted tag found");
    console.log("allTags are Matching");

}

const checkForDuplicateContent= async (I) => {
    const elementsDup = locate("div .thumb-data-item--name");
    const allPsychicNames = await I.grabTextFromAll(elementsDup);
    var set = new Set(allPsychicNames);
    const isDuplicateAbsent = set.size === allPsychicNames.length;
    I.assert(isDuplicateAbsent, true, "Duplicate Tag found");
    console.log("No duplicate names found");
};


const ValidateThumbNails = async (I, searchText, thumbnailLocator) => {

    //div .thumb-data-item--name
    const elements = locate(thumbnailLocator);
    const allNames = await I.grabTextFromAll(elements);
    let isValidResults = true;
  
    for (let i = 0; i < allNames.length; i++) {
      if (
        !!allNames[i] &&
        !allNames[i].toLowerCase().includes(searchText.toLowerCase())
      ) {
        isValidResults = false;
        break;
      }
    }
    I.assert(isValidResults, true);
  }


  const clickOnLivePsychic = (I) => {
    I.amOnPage("https://oranum.com/en/chat");
    const element = locate("div .status-text--live").withText("Live").first();
    I.click(element);
};


const GetButtonAndClick = (I, buttonLocater, Identifier) => {

    const element = locate(Identifier)
        .withAttr({ "data-testid": buttonLocater })
        .first();
    I.waitForElement(element, 20);

    I.click(element);

}

const VerifySignUpOverLay = (I) =>{
    const signUpOverlay = locate("div")
        .withAttr({ "data-testid": "mainLoginSignUpOverlayApplet" })
        .first();

    I.waitForElement(signUpOverlay, 20);
    I.see('Join Now')
}

module.exports = {
    ValidateThumbNails, 
    checkForMatchingTag,
    checkForDuplicateContent,
    clickOnLivePsychic,
    VerifySignUpOverLay,
    GetButtonAndClick
    
}