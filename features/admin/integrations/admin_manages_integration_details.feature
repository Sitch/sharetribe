Feature: Admin manages integration details

  In order to promote my marketplace, get analytics and easier log in
  As an admin
  I want to integrate my service to different apps

  Background:
    Given there are following users:
      | person            | given_name | family_name | email               | membership_created_at     |
      | manager           | matti      | manager     | manager@example.com | 2014-03-01 00:12:35 +0200 |
      | kassi_testperson1 | john       | doe         | test2@example.com   | 2013-03-01 00:12:35 +0200 |
      | kassi_testperson2 | jane       | doe         | test1@example.com   | 2012-03-01 00:00:00 +0200 |
    And I am logged in as "manager"
    And "manager" has admin rights in community "test"
    And current community has basic plan
    And I am on the integrations admin page

  Scenario: Admin adds a twitter handle
  When I add "mycommunity" to the Twitter handle field
  And I press submit
  And I refresh the page
  Then I should see "mycommunity" in the Twitter handle field

  Scenario: Admin adds a google analytics key
  When I add "UA-12345-12" to the Google analytics key field
  And I press submit
  And I refresh the page
  Then I should see "UA-12345-12" in the Google analytics key field

  Scenario: Admin adds facebook credentials
  When I fill in "Facebook client id" with "1234567890123456"
  And I fill in "Facebook client secret" with "c4ca4238a0b923820dcc509a6f75849b"
  And I press submit
  And I refresh the page
  Then I should see "1234567890123456" in the Facebook client id field
  And I should see "c4ca4238a0b923820dcc509a6f75849b" in the Facebook client secret field