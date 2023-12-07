Feature:Test for validating Oranum website
 ###############################*****Requriment -1***###################################
Scenario: Searching for partial text should display only matching psychics - "Matt"
    Given Launch the website and Enter the text on Search bar "Matt"
    When Search the content by pressing enter and validate landing on Search page "Matt"
    Then Garb all the names tags and verify if it contains the searched word "Matt"


Scenario: Searching for partial text should display only matching psychics - "Myst"
    Given Launch the website and Enter the text on Search bar "Myst"
    When Search the content by pressing enter and validate landing on Search page "Myst"
    Then Garb all the names tags and verify if it contains the searched word "Myst"


    
Scenario: Searching for partial text should display only matching psychics - "Ann"
    Given Launch the website and Enter the text on Search bar "Ann"
    When Search the content by pressing enter and validate landing on Search page "Ann"
    Then Garb all the names tags and verify if it contains the searched word "Ann"

Scenario: Searching for partial text should display only matching psychics - "psy"
   Given Launch the website and Enter the text on Search bar "psy"
    When Search the content by pressing enter and validate landing on Search page "psy"
     Then Garb all the names tags and verify if it contains the searched word "psy"

 
###############################*****Requriment -2***###################################  

Scenario: Live Psychic buttons validation - Add to favorites button
     Given Launch the website and click on Live Psychic page
     When User Clicks on live psychic - Add to favorites button
     Then Verify that sign up page is displayed for Get credits and Add favorite

Scenario: Live Psychic buttons validation - Get credits button
     Given Launch the website and click on Live Psychic page
     When User Clicks on live psychic - Get Credits button
     Then Verify that sign up page is displayed for Get credits and Add favorite
	 
	 
Scenario: Live Psychic buttons validation - verify suprise globe button
     Given Launch the website and click on Live Psychic page
     When User Clicks on live psychic - "surprise-OranumSurprisesGlobe_LJ" button with "div" locator
     Then Verify signup overLay is displayed

Scenario: Live Psychic buttons validation - verify Surprise button Daimond
     Given Launch the website and click on Live Psychic page
     When User Clicks on live psychic - "surprise-OranumSurprisesDiamond_LJ" button with "div" locator
     Then Verify signup overLay is displayed  
	 
Scenario: Live Psychic buttons validation - verify Get coins buttons
     Given Launch the website and click on Live Psychic page
     When User Clicks on live psychic - "buyCreditsBottom" button with "div" locator
     Then Verify signup overLay is displayed          

Scenario: Live Psychic buttons validation - verify Start Private session.
     Given Launch the website and click on Live Psychic page
     When User Clicks on live psychic - "smallStartPrivateButton" button with "button" locator
     Then Verify signup overLay is displayed  
	 
	 
	 
	 
	 ###############################*****Requriment -3***###################################

Scenario: Validate diffent categories - Astrology.
     Given Launch the website and Select "Astrology" under Category with locatore refernce "/en/experts/astrology?selectedFilters=1"
     Then Garb all the Category tags and verify if it contains the "Astrology"
     Then Garb all the Names and verify if it contains the does not contain duplicates

Scenario: Validate diffent categories - Tarot.
     Given Launch the website and Select "Tarot" under Category with locatore refernce "/en/experts/tarot?selectedFilters=2"
     Then Garb all the Category tags and verify if it contains the "Tarot"
     Then Garb all the Names and verify if it contains the does not contain duplicates  

Scenario: Validate diffent categories - Clairvoyance.
     Given Launch the website and Select "Clairvoyance" under Category with locatore refernce "/en/experts/clairvoyance?selectedFilters=3"
     Then Garb all the Category tags and verify if it contains the "Clairvoyance"
     Then Garb all the Names and verify if it contains the does not contain duplicates  


Scenario: Validate diffent categories - Dream interpretation.
     Given Launch the website and Select "DreamInterpretation" under Category with locatore refernce "/en/experts/dream+interpretation?selectedFilters=4"
     Then Garb all the Category tags and verify if it contains the "DreamInterpretation"
     Then Garb all the Names and verify if it contains the does not contain duplicates  

Scenario: Validate diffent categories - Healing.
    Given Launch the website and Select "Healing" under Category with locatore refernce "/en/experts/healing?selectedFilters=5"
     Then Garb all the Category tags and verify if it contains the "Healing"
    Then Garb all the Names and verify if it contains the does not contain duplicates



Scenario: Validate diffent categories - Mediumship.
     Given Launch the website and Select "Mediumship" under Category with locatore refernce "/en/experts/mediumship?selectedFilters=7"
     Then Garb all the Category tags and verify if it contains the "Mediumship"
     Then Garb all the Names and verify if it contains the does not contain duplicates


Scenario: Validate diffent categories - Crystal ball.
     Given Launch the website and Select "CrystalBall" under Category with locatore refernce "/en/experts/crystal+ball?selectedFilters=8"
     Then Garb all the Category tags and verify if it contains the "CrystalBall"
     Then Garb all the Names and verify if it contains the does not contain duplicates     
    
Scenario: Validate diffent categories - Numerology.
     Given Launch the website and Select "Numerology" under Category with locatore refernce "/en/experts/numerology?selectedFilters=9"
     Then Garb all the Category tags and verify if it contains the "Numerology"
     Then Garb all the Names and verify if it contains the does not contain duplicates    

Scenario: Validate diffent categories - Runes.
     Given Launch the website and Select "Runes" under Category with locatore refernce "/en/experts/runes?selectedFilters=10"
     Then Garb all the Category tags and verify if it contains the "Runes"
     Then Garb all the Names and verify if it contains the does not contain duplicates 

Scenario: Validate diffent categories -  Palm reading.
     Given Launch the website and Select "PalmReading" under Category with locatore refernce "/en/experts/palm+reading?selectedFilters=11"
     Then Garb all the Category tags and verify if it contains the "PalmReading"
     Then Garb all the Names and verify if it contains the does not contain duplicates


Scenario: Validate diffent categories -  Energy work.
     Given Launch the website and Select "EnergyWork" under Category with locatore refernce "/en/experts/energy+work?selectedFilters=12"
     Then Garb all the Category tags and verify if it contains the "EnergyWork"
     Then Garb all the Names and verify if it contains the does not contain duplicates


Scenario: Validate diffent categories - Crystals.
   Given Launch the website and Select "Crystals" under Category with locatore refernce "/en/experts/crystals?selectedFilters=6"
     Then Garb all the Category tags and verify if it contains the "Crystals"
     Then Garb all the Names and verify if it contains the does not contain duplicates