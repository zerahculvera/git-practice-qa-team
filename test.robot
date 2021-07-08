*** Settings ***
Library    		BuiltIn
Library			SeleniumLibrary
Suite Teardown	close all browsers

*** Test Cases ***
Test
	[Setup]	Set Headless Mode On
	go to	http://www.blazedemo.com/
	log    	test is executed

*** Keywords ***
Set Headless Mode On
    ${chrome options} =    Evaluate    selenium.webdriver.ChromeOptions()
	Call Method    ${chrome_options}    add_argument    headless
	Call Method    ${chrome_options}    add_argument    disable-gpu
	${options}=     Call Method     ${chrome_options}    to_capabilities
    Create Webdriver    Chrome    chrome_options=${chrome_options}