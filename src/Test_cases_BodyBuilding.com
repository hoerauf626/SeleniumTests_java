
Test Case Description:
 Add items to the shopping cart.

Test Step 1
Navigate to BodyBuilding. Com
Test Step 2
Click on any item. Ex: (By.xpath( (//*[@id=\"js-bbcom-app\"]/main/div[2]/div/a[2]")).click
Test Step 3
View the product. Ex:(By.cssSelector("a[class='bb-flat-btn bb-flat-btn--size-sm product__view-product-link']")).click()
Test Step 4
Scroll down the page until you reach the quantity plus or minus buttons.
Test Step 5
Select more than three items. Ex:for (int i = 1; i < 5; i++) {
			driver.findElement(By.cssSelector("button[class='bb-stepper__btn bb-stepper__btn--increment']")).click();
		}

Test Step 6
Click the add to cart button. Ex:driver.findElement(By.cssSelector("div[class='sku-chooser__add2cart-col']")).click();
Test Step 7
A pop-up should appear. Check to make sure the quantity that you've selected is correct.
