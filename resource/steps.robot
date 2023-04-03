*** Settings ***
Library    SeleniumLibrary
Library    Process
Library    BuiltIn
Variables    variables.py

*** Keywords ***
Login
    Open Browser    ${base_url}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Sleep    3
    Click Link    ${signin_btn}
    Sleep    3
    Select Frame    class:signin-iframe
    Wait Until Page Contains Element    ${email_input}
    Input Text    ${email_input}    ${email}
    Input Text    ${password_input}    ${password}
    Click Button    ${login_btn}
    Wait Until Page Contains Element    ${nav_bar}
    Element Should Contain    ${nav_bar}    My Account
    Location Should Contain    status=welcome 

Search & Sort
    Sleep    3
    Input Text    ${search_input}    fiction
    Sleep    10
    Click Element    ${search_option}
    Wait Until Page Contains Element    ${search_title}
    Element Should Contain    ${search_title}    fiction
    Location Should Contain    searchTerm=fiction
    Select From List By Value    ${sortby_dropdown}    price_low_high
    Sleep    3
    Location Should Contain    searchSortBy=price_low_high
    Element Attribute Value Should Be   ${price_lowhigh}    selected   true

add & remove basket
    Click Image    ${item}
    Click Link    ${add_basket}
    Sleep    3
    Click Link    ${goto_basket}
    Location Should Contain    /basket
    Element Should Be Visible    ${basket_item}
    Click Button    ${remove_item}
    Sleep    3
    Element Should Be Visible    ${empty}

Add wishlist
    Sleep    3
    Execute Javascript    history.back()
    Sleep    3
    Execute Javascript    history.back()
    Click Link    ${add_wishlist}
    Input Text    ${wishlist_input}    Favorite
    Click Button    ${wishlist_btn}
    Sleep    3
    Click Link    ${goto_wishlist}
    Location Should Contain    /account/wishlist
    Element Should Be Visible    ${wishlist_item}
    Close Browser
    

    
    