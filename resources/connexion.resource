*** Settings***

Library   Browser


*** Keywords ***

I got to the login form


    Click  css=.tool--account a


I write my mail "${mail}"
    
    Fill Text     xpath=//*[@id="input-email"]//input  ${mail}
    Click    id=lookup-btn
  
     