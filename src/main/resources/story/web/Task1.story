
Scenario: Sign Up
Given I am on the main application page
When I click on an element by the xpath '//a[@href="/signup" and contains(@class, "btn-sm")]'
When I enter '<mail>' in a field by the xpath '//input[@id="email"]'
When I click on an element by the xpath '//input[@id="signup-submit"]'
When I wait until an element with the xpath '//input[@id="displayName"]' appears
When I enter '<user>' in a field by the xpath '//input[@id="displayName"]'
When I click on an element by the xpath '//span[contains(text(), "Sign up")]'
Examples:
|mail|user|
|#{generate(Internet.emailAddress)}|#{generate(regexify '[a-z]{6}[A-Z]{2}')}|
|#{generate(Internet.emailAddress)}|#{generate(regexify '[a-z]{6}[A-Z]{2}')}|

