
*** Settings***

Library   Browser

*** Keywords ***


I search for "${search}" 
# je vais la variable du produit à chercher 
    # Mettre ballon dans la barre de recherche
    Fill Text     xpath=//*[@id="search-bar"]//input  ${search}
    #Appuyer sur la loupe
    Click      css=#search-bar button[type='submit']
# quand il y a un mot clef ex "click" alors elle prends des paramettre comme le css 
#tu mets deux espaces 
