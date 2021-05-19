import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.JavascriptExecutor;
public class Chrome {
public static void main(String[] args) throws InterruptedException {

		System.setProperty("webdriver.chrome.driver","C:\\Users\\jchoe\\Downloads\\chromedriver_win32 (2)\\chromedriver.exe");
		WebDriver driver = new ChromeDriver(); // C:\Users\jchoe\Downloads\chromedriver_win32 (2)
		driver.get("https://bodybuilding.com");
		driver.findElement(By.xpath("//*[@id=\"js-bbcom-app\"]/main/div[2]/div/a[2]")).click();
		driver.findElement(By.cssSelector("a[class='bb-flat-btn bb-flat-btn--size-sm product__view-product-link']")).click();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,350)", "");
		Thread.sleep(3000L);
		for (int i = 1; i < 5; i++) {
			driver.findElement(By.cssSelector("button[class='bb-stepper__btn bb-stepper__btn--increment']")).click();
		}
		driver.findElement(By.cssSelector("div[class='sku-chooser__add2cart-col']")).click();
		Thread.sleep(3000L);
		driver.findElement(By.xpath("//*[@id=\"js-bbcom-app\"]/div/bb-add-to-cart-dialog/bb-dialog/div/div/bb-dialog-content/div/bb-add-to-cart/div/div/div[2]/div/div[3]/div[1]/a[1]")).click();
				
	}

}
