require "selenium-webdriver"

# Create a new Firefox browser instance
driver = Selenium::WebDriver.for :firefox

# Navigate to the login page
driver.navigate.to "https://elm1403-test.zenoss.io/#/"

# Find the username and password fields and enter the login information
driver.find_element(name: "username").send_keys("admin@elm1403-test.com")

# Click the first continue button
submit_button = driver.find_element(name: "action").click()

driver.find_element(name: "password").send_keys("D0gP0und!")

#click the second continue button
submit_button = driver.find_element(name: "action").click()


link = driver.find_element(css: "a:contains('Explore CZ')")
#submit_button = driver.find_element(class: "v-btn__content").click()



# Close the browser window
#driver.quit
