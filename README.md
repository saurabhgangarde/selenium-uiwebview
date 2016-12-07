# selenium-uiwebview
This project uses selenium iPhone driver to test HTML based iPhone Native application. These are cross-platform applications implemented using HTML-JS webapp running in UIWebView. A Popular version of this is implemented using PhoneGap.

The original iPhoneWeb-driver project has sample implementation to test externally hosted web-applications. But when you have HTML-JS code bundled with your native iPhone app as in the case of PhoneGap it doesn't help.

So here I have created a sample iPhone project which implements web-application(index.html) in UIWebView. Now this can be any web-application created using HTML-JS. Like some HTML5 based game. And you can test the whole application using selenium iPhone driver which is integrated with the application.

For trying this application the index.html has only one div with text "Testing", the current test case tests for this string. In the iPhone application we have ViewController which extends WebDriverViewController or UIWebViewController depending if we want to use Selenium or not. Using compile time flag USE_WEBDRIVER. Now the WebDriverViewController has all the code to initialize HTTPServerController which handles task of starting CocoaHTTPServer and then handling all the requests from Selenium RemoteWebDriver. The WebDriverViewController and rest of the code is adapted directly from iPhone Webdriver project, with some changes in WebDriverViewController so that it works with our UIWebView or PhoneGap's webview.

When you start HTMLJSApp you can see in logs a message saying "Status : Started at http:///wd/hub/". You can use the same URL for creating Selenium RemoteWebDriver and run all your test cases using this driver.

I have added one sample test case in SeleniumTest project. Which just test for one string on index.html

You can simply integrate the same with PhoneGap based application too. You just need to integrate PhoneGap Main-ViewController in the current hierarchy replacing ViewController in HTMLJSApp. And also set the webview instance in UIWebViewController to PhoneGap's webview. This way you have redirected all the selenium calls to your PhoneGap's WebView.

This can be also extended to any other CrossPlatform iOS application framework. More than that I bet this setup will also run on any other platforms, like Android. So now you can create your HTML-JS based cross platform application ONCE and also write all the Selenium test cases ONCE and run it on any platform.

I will soon try to spend time on getting Android setup done.

The theory above seems simple to me, but if anybody does not understand some part or have problems running the application or testcases, drop me a mail at saurabhgangarde@gmail.com
