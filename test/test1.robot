*** Settings ***
Library  Browser

*** Variables ***
${search}  Ballon

*** Test Cases ***
Test
    Open Browser  https://www.decathlon.fr/
    Get Element States  id=didomi-notice-agree-button  contains  visible
    # Cliquer sur accepter les cookies
    Click  xpath=//span[normalize-space()='Tout accepter']
    Wait For Elements State  id=didomi-popup  detached
    
    # Mettre ballon dans la barre de recherche
    Click  xpath=//*[@id="search-bar"]//input
    Fill Text  xpath=//*[@id="search-bar"]//input  ${search}
    #Vérifier l'url de la page
    #Appuyer sur la loupe
    Click  css=#search-bar button[type='submit']  

    #Vérifier l'url de la page
    ${current_url}=  Get Url
    Should Be Equal As Strings  ${current_url}  https://www.decathlon.fr/search?Ntt=${search}

    #Vérifier la banniere de la page est bien affichée avec ballon
    Get Element States  id=search-suggestions-banner  contains  visible 
    Get Text    css=.searchText  contains  ${search}