package seleniumstudy;

import java.util.Scanner;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Exam1 {
	public static void main(String[] args) throws InterruptedException {
		System.setProperty 
			("webdriver.chrome.driver","D:/chromedriver_win32/chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.get("http://localhost:8080/jspstudy2/member/loginForm");
		System.out.println(driver.getPageSource());
		WebElement element = null;
		element = driver.findElement(By.name("id"));
		String id = "admin";
		element.sendKeys(id);
		element = driver.findElement(By.name("pass"));
		String pw = "0";
		element.sendKeys(pw);
//		element = driver.findElement(By.cssSelector(".btn.btn-dark"));
//		element.click();
		element = driver.findElement(By.name("f")); //form 태그
		element.submit(); //form submit
		driver.switchTo().alert().accept();
		Thread.sleep(1000);
		driver.get("http://localhost:8080/jspstudy2/member/list");
		//Jsoup으로 분석하기
		//driver.getPageSource() : 브라우저에서 제공되는 html 페이지.
		Document doc = Jsoup.parse(driver.getPageSource());
		Elements div = doc.select("table");
		for(Element e : div) {
			for(Element tr : e.select("tr")) {
				Elements tds = tr.select("td");
				if(tds.size() > 3) {
					//tds.get(2) : 회원이름 값
					System.out.println(tds.get(2).html());
				}
			}
		}
		Thread.sleep(1000);
		driver.close();//브라우저 닫기
	}
}
