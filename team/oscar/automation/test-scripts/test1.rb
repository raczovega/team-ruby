#require selenium-webdriver gem
require 'selenium-webdriver'

#launch the chrome browser
driver=Selenium::WebDriver.for:chrome 

#maximize the window
driver.manage.window.maximize

#navigate to the website
driver.get "https://elm1403-test.zenoss.io/#/"

#find the username textbox element
username=driver.find_element(:name,"username")

#type the username dIadmin@elm1403-test.com
username.send_keys("admin@elm1403-test.com")

#press continue
action=driver.find_element(:name,"action").click()



#find the password textbox element
password=driver.find_element(:name,"password")

#type the password D0gP0und!
password.send_keys("D0gP0und!")


#press continue
action=driver.find_element(:name,"action").click()
