const { I } = inject();
const { checkForMatchingTag, checkForDuplicateContent } = require("./../commUtils")

Given('Launch the website and Select "{word}" under Category with locatore refernce "{word}"', (Category, href) => {
    I.amOnPage("/");
    const element = locate("a").withAttr({ href }).first();
    I.click(element);
    I.waitForURL("https://www.oranum.com" + href)

});

Then('Garb all the Category tags and verify if it contains the "{word}"', (Category) => {
    checkForMatchingTag(I)
})

Then('Garb all the Names and verify if it contains the does not contain duplicates', () => {
    checkForDuplicateContent(I)
}) 