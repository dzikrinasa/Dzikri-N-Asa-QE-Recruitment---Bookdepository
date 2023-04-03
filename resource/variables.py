# Credential
base_url='https://www.bookdepository.com/'
email='fernandiasa28@gmail.com'
password='Farmacare123'

# PAGE OBJECT

# Home Page
signin_btn='xpath:/html/body/div[3]/div[1]/div/ul[2]/li[3]/a'
nav_bar='class:right-nav'
search_input='xpath://*[@id="book-search-form"]/div[1]/input[1]'
search_option='class:suggestion[0]'
search_option='xpath://*[@id="book-search-form"]/div[2]/div[1]/a[1]'

# Login Page
signin_iframe='class:signin-iframe'
email_input='xpath://*[@id="ap_email"]'
password_input='id:ap_password'
login_btn='id:signInSubmit'

# Search Result Page
search_title='xpath:/html/body/div[3]/div[6]/div[5]/h1'
sortby_dropdown='class:search-filter-dropdown-option'
price_lowhigh='xpath:/html/body/div[3]/div[6]/div[5]/div[3]/div[2]/form/select/option[2]'
search_iframe='xpath://*[@id="launcher"]'
item='xpath:/html/body/div[3]/div[6]/div[5]/div[4]/div/div/div/div/div[1]/div[1]/a[1]/img'

# Detail Page
add_basket='xpath:/html/body/div[3]/div[6]/div[7]/div/div[1]/div[1]/div[3]/div/div[3]/a[1]'
goto_basket='class:continue-to-basket'
add_wishlist='class:add-to-wishlist'
wishlist_input='xpath:/html/body/div[13]/div/div/div[2]/div/div/div[1]/form/div[1]/input'
wishlist_btn='xpath:/html/body/div[13]/div/div/div[2]/div/div/div[1]/form/div[2]/button' 
goto_wishlist='xpath:/html/body/div[13]/div/div/div[2]/div/a'
wishlist_iframe='xpath:/html/body/iframe'


# Basket
basket_item='class:basket-item'
remove_item='class:remove-btn'
empty='xpath:/html/body/div[3]/div[6]/div/div[2]/div[1]'

# Wishlist
wishlist_item='class:wishlist-items'



