require "selenium-webdriver"

# Specify the path to the geckodriver executable
Selenium::WebDriver::Firefox::Service.driver_path = "/path/to/geckodriver"

# Create a new Firefox driver instance
driver = Selenium::WebDriver.for :firefox

# Do something with the driver...
