Description: Reddit.com is used for testing in all tasks, since it does not require additional anti-bot verification

Scenario: Sign In into the Reddit.com and check some elements
When I login into Reddit.com with '${username}' and '${userpassword}'
When I wait until an element with the xpath '//button[@id="COIN_PURCHASE_DROPDOWN_ID"]' appears
When I find > `0` elements by `By.xpath(//button[@id="COIN_PURCHASE_DROPDOWN_ID"])` and for each element do
|step|
|Then an element by the xpath '//button[@id="COIN_PURCHASE_DROPDOWN_ID"]' exists|
When I find > `0` elements by `By.xpath(//div[@class="header-user-dropdown"])` and for each element do
|step|
|Then an element with the tag 'span' and text '${username}' exists|
