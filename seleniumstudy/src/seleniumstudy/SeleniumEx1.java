package seleniumstudy;

import java.util.Scanner;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumEx1 {
	public static void main(String[] args) throws InterruptedException {
		System.setProperty //시스템 환경 설정 => chrome 드라이버 파일위치 찾아갈 수 있게 설정
			("webdriver.chrome.driver","D:/chromedriver_win32/chromedriver.exe");
		WebDriver driver = new ChromeDriver(); //url 로드
		driver.get("http://www.naver.com");
		System.out.println(driver.getPageSource());
		WebElement element = null;
		element = driver.findElement(By.cssSelector("#account.sc_login a.link_login"));
		element.click();
		/*
		 * findElements(By.함수) : 여러개의 태그만 찾음
		 * findElement(By.함수) : 한개의 태그만 찾음
		 * By.함수 : 태그 찾는 방식 설정
		 * By.name() : name 속성으로 태그 찾기
		 * By.id()   : id 속성 태그 찾기
		 * By.cssSelector : css에서 사용되는 선택자 방식으로 태그 찾기
		 * 		#account.sc_login : id="account" 이고 class="sc_login" 한개의 태그 선택
		 * 		a.link_login      : class="link_login" 인 a 태그 선택
		 * 		#account.sc_login a.link_login :
		 * 							id="account" 인태그의 하위 태그 중
		 * 							class="link+login" 인 a 태그 선택
		 * By.xpath : xml에서 태그 선택하는 방식
		 * 		/ : root 노드. 문서노드
		 * 		//: 모든 위치
		 * 		@id='log.login' : @는 속성 표시
		 * 						  id="log.login"인 태그
		 * By.linkText(문자열) : 태그의 text 값으로 태그 찾기
		 * By.partialLinkText(문자열) : 태그의 text 값이 포함된 태그 찾기
		 */
		Scanner scan = new Scanner(System.in);
		element = driver.findElement(By.name("id"));
		System.out.println("네이버 아이디를 입력하세요");
		String id = scan.nextLine();
		//sendKeys(값) : 찾아놓은 태그에 값 입력
		element.sendKeys(id);
		element = driver.findElement(By.name("pw"));
		System.out.println("네이버 비밀번호를 입력하세요");
		String pw = scan.nextLine();
		element.sendKeys(pw);
		element = driver.findElement(By.xpath("//*[@id='log.login']"));
		element.click();
		Thread.sleep(1000);
	}
}
