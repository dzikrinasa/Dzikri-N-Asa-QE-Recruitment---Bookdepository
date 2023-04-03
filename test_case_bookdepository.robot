*** Settings ***
Library    SeleniumLibrary
Resource    resource/steps.robot

*** Test Cases ***

User should be able to Login 
    Login

On a search, User should be able to Sort By Price, low to high
    Search & Sort

User should be able to add & remove book on basket
    add & remove basket

User should be able to add book to wishlist
    Add wishlist

# PLEASE DELETE WISHLIST AFTER FINISH RUN ALL TEST CASE