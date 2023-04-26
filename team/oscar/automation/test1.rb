require "selenium-webdriver"

# Create a new Firefox browser instance
driver = Selenium::WebDriver.for :firefox

# Navigate to the login page
driver.navigate.to "https://practicetestautomation.com/practice-test-login/"

# Find the username and password fields and enter the login information
driver.find_element(name: "username").send_keys("student")
driver.find_element(name: "password").send_keys("Password123")

# Click the submit button
submit_button = driver.find_element(id: "submit").click()

# Verify that the new page URL contains the expected text
=begin
expected_url_text = "practicetestautomation.com/logged-in-successfully/"
if driver.current_url.include?(expected_url_text)
  puts "Test1 Passed ✓ - URL contains expexted text"
else
  puts "URL test failed"
end
=end
expected_url_text = "practicetestautomation.com/logged-in-successfully/"
puts driver.current_url.include?(expected_url_text) ? "Test1 Passed ✓ - URL contains expected text" : "URL test failed"

# Verify that the new page contains the expected text
#puts expected_page_text = ("Congratulations|successfully logged in") ? "Test2 Passed ✓ - Page contains expected text" : "Page test check failed"
#begin
expected_page_text = "Congratulations|successfully logged in"
actual_page_text = driver.page_source
if driver.page_source.match?(expected_page_text)
  puts "Test2 Passed ✓ - Page contains expected text"
else
  puts "Page test check failed"
end
#=end

# Verify that the Log Out button is displayed on the new page
puts driver.find_element(link_text: "Log out").displayed? ? "Test3 Passed ✓ - Log Out button is displayed" : "Log Out test failed"
=begin
if driver.find_element(link_text: "Log out").displayed?
  puts "Test3 Passed ✓ - Log Out button is displayed"
else
  puts "Log Out test failed"
end
=end
# Close the browser window
driver.quit
