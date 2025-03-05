*** Settings ***
Library  Browser

*** Keywords ***


the select sorting method is "${method}"
  Get Selected Options  id=list-sort-select    label   contains  ${method}

  
I sort the list by "${method}"
   Select Options By  id=list-sort-select     label   contains    ${method}
            
    

    
    
