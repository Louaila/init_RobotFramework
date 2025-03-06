*** Settings***

Library   Browser

*** Keywords ***
I am on the homepage

    Open Browser  https://www.decathlon.fr/
    Get Element States  id=didomi-notice-agree-button  contains  visible
    # Cliquer sur accepter les cookies
    Click  xpath=//span[normalize-space()='Tout accepter']
    Wait For Elements State  id=didomi-popup  detached




I go to the login form
    Click    css=.tool--account a

 