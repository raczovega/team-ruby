#require selenium-webdriver gem
require 'selenium-webdriver'

#launch the chrome browsercler
driver=Selenium::WebDriver.for:firefox

#maximize the window
driver.manage.window.maximize
    
#navigate to the website
driver.get "https://elm1403-test.zenoss.io/#/"
    
#find the username textbox element
username=driver.find_element(:name,"username")
    
#type the username dIadmin@elm1403-test.com
username.send_keys("admin@elm1403-test.com")
    
#press continue
action=driver.find_element(:name,"action").click
    
    
#find the password textbox element
password=driver.find_element(:name,"password")
    
#type the password D0gP0und!
password.send_keys("D0gP0und!")
    
    
#press continue
action=driver.find_element(:name,"action").click
    
sleep 3

#click okay
driver.find_element(:xpath,"//*[@id='app']/div[3]/div/div/div[3]/button").click



#click on explore cz
driver.find_element(:xpath,"//*[@id='app']/div/header/div/div/a[7]").click

sleep 3
#click on qa-ubuntu-14 device
driver.find_element(:xpath,"//*[@id='gridview-1079']/table/tbody/tr[20]/td[1]/div/a").click

sleep 3


#device menu table
production_state_dropdown=driver.find_element(:xpath, "//*[@id='treeview-1309']/table")

#options to select
production_state_dropdown_options=production_state_dropdown.find_elements(:tag_name,'tr')

#select the component "File system"
production_state_dropdown_options.each{|state| state.click if state.text.include? "File Systems"}

sleep 5
