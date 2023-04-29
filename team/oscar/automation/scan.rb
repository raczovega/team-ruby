require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

login(driver)

# Other code that requires the user to be logged in

#driver.quit


# Define a recursive function to output the properties of all child elements
def output_element_properties(element, indent_level)
    # Output the element tag name and attributes
    puts "#{' ' * indent_level}<#{element.tag_name}>"
    element.attribute_names.each do |attr_name|
      puts "#{' ' * (indent_level + 2)}#{attr_name}: #{element.attribute(attr_name)}"
    end
  
    # Recursively output the properties of all child elements
    element.find_elements(tag_name: '*').each do |child_element|
      output_element_properties(child_element, indent_level + 2)
    end
  end
  
  # Output the properties of all child elements of the root HTML element
  output_element_properties(root_element, 0)
  
# quit the driver
#driver.quit
