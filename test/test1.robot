*** Settings ***
Library  Browser

Resource  ../resources/homepage_page.resource
Resource  ../resources/searchpage.resource
Resource   ../resources/connexion.resource


    

*** Test Cases ***
Test
   Given I open the homepage
    

 
Test2 
   
    Given I open the homepage  
    When I search for "ballon" 
    Then I am on the search page for "ballon"

    # #Vérifier l'url de la page
    # ${current_url}=  Get Url
    # Should Be Equal As Strings  ${current_url}  https://www.decathlon.fr/search?Ntt=${search}


test3
    Given I open the homepage
    when I got to the login form
    Then I am on the login form
    Then I write my mail " lou525@hotmail.fr"
    then I have an error message