*** Settings ***
Library  Browser

Resource  ../resources/homepage_page.resource
Resource  ../resources/searchpage.resource
Resource   ../resources/login.resource

    

*** Test Cases ***
Test
   Given I am on the homepage
    

 
Test2 
   
    Given I am on the homepage
    When I search for "ballon" 
    Then I am on the search page for "ballon"

    # #Vérifier l'url de la page
    # ${current_url}=  Get Url
    # Should Be Equal As Strings  ${current_url}  https://www.decathlon.fr/search?Ntt=${search}


test3
    Given I am on the homepage
    When I go to the login form
    Then I am on the login form
    When I try to connect with the email address "toto@yopmail;com"
    Then I have an error for a wrong email address