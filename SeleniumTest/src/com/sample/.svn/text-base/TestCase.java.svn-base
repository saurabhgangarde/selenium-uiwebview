/**
 * 
 */
package com.sample;

import java.net.MalformedURLException;
import java.net.URL;

import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.Assert;
import org.testng.annotations.Test;

/**
 * Sample test case for Selenium iPhonedriver with PhoneGap type application
 * 
 * @author saurabhgangarde (saurabhgangarde@gmail.com)
 *
 */
public class TestCase {
	
	@Test
	public void sampleTest() throws MalformedURLException, InterruptedException
	{
		// Use your own device or system IP shown in iPhone application log to create driver.
		RemoteWebDriver driver = new RemoteWebDriver(new URL("http://172.24.191.78:3001/wd/hub/"),DesiredCapabilities.iphone());
		String testString = driver.findElementById("testString").getText();
		Assert.assertEquals(testString, "Testing");
	}
	
}
