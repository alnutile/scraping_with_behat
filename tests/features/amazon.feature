Feature: Get List of Reads
  Scenario: Given I log in and poke around
    Given I am on "https://www.amazon.com/ap/signin?openid.assoc_handle=amzn_kindle&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.pape.max_auth_age=0&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&pageId=amzn_kindle&openid.mode=checkid_setup&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.return_to=https%3A%2F%2Fkindle.amazon.com%3A443%2Fauthenticate%2Flogin_callback%3Fwctx%3D%252F"
    And I fill in username and password
    And I press "signInSubmit"
    And I wait
    And I wait
    Then I should see "Hello, Alfred"
    And I get all the nice content