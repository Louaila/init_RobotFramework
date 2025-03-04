*** Settings***

Library   Browser

*** Keywords ***

  


I am on the search page for "${search}"
    
    #Vérifier la banniere de la page est bien affichée avec ballon
    Get Element States  id=search-suggestions-banner  contains  visible 
    Get Text    css=.searchText  contains  ${search}    