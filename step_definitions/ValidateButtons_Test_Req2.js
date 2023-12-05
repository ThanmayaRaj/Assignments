const { I } = inject();
const { clickOnLivePsychic , GetButtonAndClick,VerifySignUpOverLay} = require("./../commUtils")

Given('Launch the website and click on Live Psychic page', () => {

    clickOnLivePsychic(I);
    I.waitForNavigation();
    I.see("Topics")
});


When('User Clicks on live psychic - Get Credits button',()=>{

    const element = locate("a").withText("Get Credits").first();
    I.click(element);  
})

When('User Clicks on live psychic - Add to favorites button',()=>{

    const element = locate("a").withAttr({ href: "/en/favorite" }).first();
    I.click(element);   
})

When('User Clicks on live psychic - "{word}" button with "{word}" locator',(buttonLocaters ,Identifiers)=>{

   GetButtonAndClick(I,buttonLocaters,Identifiers)
})

Then('Verify that sign up page is displayed for Get credits and Add favorite',()=>{
    I.waitForURL("https://www.oranum.com/en/auth/sign-up");
    I.see("Join Now!")   
})

Then('Verify signup overLay is displayed',()=>{
    VerifySignUpOverLay(I)
})

