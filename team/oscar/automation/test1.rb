require "selenium-webdriver"

# Create a new Firefox browser instance
driver = Selenium::WebDriver.for :firefox

# Navigate to the login page
driver.navigate.to "https://practicetestautomation.com/practice-test-login/"

# Find the username and password fields and enter the login information
username_field = driver.find_element(name: "username")
password_field = driver.find_element(name: "password")
username_field.send_keys("student")
password_field.send_keys("Password123")

# Click the submit button
submit_button = driver.find_element(id: "submit")
submit_button.click()

# Verify that the new page URL contains the expected text
expected_url_text = "practicetestautomation.com/logged-in-successfully/"
if driver.current_url.include?(expected_url_text)
  puts "URL test passed"
else
  puts "URL test failed"
end

# Verify that the new page contains the expected text
expected_page_text = /Congratulations|successfully logged in/
if driver.page_source.match?(expected_page_text)
  puts "Page test passed"
else
  puts "Page test check failed"
end

# Verify that the Log Out button is displayed on the new page
if driver.find_element(link_text: "Log out").displayed?
  puts "Log Out test passed"
else
  puts "Log Out test failed"
end

# Close the browser window
driver.quit
