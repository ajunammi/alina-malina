Description: Reddit.com is used for testing in all tasks, since it does not require additional anti-bot verification

Scenario: Sign In
Given I am on a page with the URL 'https://reddit.com'
When I find <= '1' elements by By.xpath(//a[@role="button" and contains(@href, "/login")]) and for each element do
|step|
|When I click on an element by the xpath '//a[@role="button" and contains(@href, "/login")]'|
|When I switch to frame located `By.xpath(//iframe[contains(@src, "/login")])`|
|When I enter '${username}' in a field by the xpath '//input[@id='loginUsername']'|
|When I enter '${userpassword}' in a field by the xpath '//input[@id='loginPassword']'|
|When I click on an element with the text 'Log In'|
When I wait until an element with the tag 'a' and attribute 'href'='<urlPart>' appears
When I click on a link with the URL '<urlPart>'
Then the text 'Today's Top Growing Communities' exists
Examples:
|urlPart|
|top|

