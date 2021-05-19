Test Case 
 Verify the webpage and selenium response for how many checkboxes there are on the page and how many are selected in a test.

Test Step1
Navigate to travelocity.com
Test Step 2
Use the System.Out.Print and the element of the checkbox to get a count of how many checkboxes the webpage has.
Ex:System.out.println(driver.findElements(By.cssSelector("input[type='checkbox']")).size());
Test Step 3
Click on any checkbox
Ex:driver.findElement(By.cssSelector("#add-flight-switch")).click();
Test Step 4
Use the System.out.print to see the checked checkbox prints true in the terminal.
Ex:System.out.println(driver.findElement(By.cssSelector("#add-flight-switch")).isSelected());
Test Step 5
Use the System.Out.Print to see if the unselected checkbox prints false in the terminal.
Ex:System.out.println(driver.findElement(By.cssSelector("#add-car-switch")).isSelected());
