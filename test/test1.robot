*** Settings ***
Library  Browser

Resource  ../resources/homepage_page.resource
Resource  ../resources/searchpage.resource
Resource   ../resources/login.resource
Resource   ../resources/searchbar.resource
Resource   ../resources/product.page.resource
Resource    ../resources/cart_page.resource
Test Setup   Given I am on the homepage

# Tu fais setup avant chaque test 
    

*** Test Cases ***
Test1
   No Operation
    

 
Test2 

    When I search for "ballon" 
    Then I am on the search page for "ballon"

    # #Vérifier l'url de la page
    # ${current_url}=  Get Url
    # Should Be Equal As Strings  ${current_url}  https://www.decathlon.fr/search?Ntt=${search}


test3
    
    When I go to the login form
    Then I am on the login form
    When I try to connect with the email address "toto@yopmail;com"
    Then I have an error for a wrong email address


test4
   When I search for "ballon"
    Then I am on the search page for "ballon"
    And the selected sorting method is "Meilleures ventes"
    When I sort the list by "Note des clients"
    Then the selected sorting method is "Note des clients"


test5
    When I search for "ballon"
    Then I am on the search page for "ballon"
    When I open the first product page
    Then I am on the product page for "Ballon de Gymnastique Rythmique de 165 mm, rose ultra fluo"
    When I add the product to the cart
    Then the product is added to the cart successfully
    When I go to the cart
    Then the cart is displayed
    And there are "1" product(s) in the cart
    And the product "Ballon de Gymnastique Rythmique de 165 mm, rose ultra fluo" is in the cart


test6
    When I search for " 8549582"
    Then I add the product to the cart
    then the product is added to the cart successfully
    when I close poppup 
    Then I search for " 8336573"
    When I add the product to the cart
    Then the product is added to the cart successfully


test7
    When I search for "ballon"
    Then I am on the search page for "ballon"
    And The sellers are displayed correctly