Test Scenario: 
Verify functionality of the autosuggest in the country select bar. 

Test Case 1:
Set Austria as your country by entering only the first two letters(“Au”) in the country select bar.
Step 1
Navigate to rahulshettyacademy.com/dropdownsPractise.
Step 2
Click on the country select bar and type in the letters (“Au”). 
Ex:driver.findElement(By.id("autosuggest")).sendKeys("Au");
Step 3
Click on (“Austria”) in the autosuggest dropdown.

Test Case 2:
Type digits in the country select bar.
Step 1
Navigate to rahulshettyacademy.com/dropdownsPractise.
Step 2
Click on the country select bar and type in two and three digits.
Ex:driver.findElement(By.id("autosuggest")).sendKeys("12’).
Ex:driver.findElement(By.id("autosuggest")).sendKeys("345”).
Step 3
Check to make sure that no autosuggest dropdown appears.

Test Case 3:
Enter invaild country name in the country select bar.
Step 1
Navigate to rahulshettyacademy.com/dropdownsPractise.
Step 2
Click on the country select bar and type in the letters (“Zz”). 
Ex:driver.findElement(By.id("autosuggest")).sendKeys("Zz");
Step 3
Check to make sure that no autosuggest dropdown appears.

Test Case 4:
Enter invaild country name in the country select bar.
Step 1
Navigate to rahulshettyacademy.com/dropdownsPractise.
Step 2
Click on the country select bar and type in special characters  (“!*”). 
Ex:driver.findElement(By.id("autosuggest")).sendKeys("!*");
Step 3
Check to make sure that no autosuggest dropdown appears.

