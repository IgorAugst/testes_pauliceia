Feature: As an user, I want to be able to read the notifications I have received.

  Scenario: Reading notifications
    Given I am on the map page
    When I click on the notification icon
    Then I should see a list of notifications

  Scenario: Reading notification comments
    Given I am on the map page
    When I click on the notification icon
    And I click on a notification
    Then I should see a list of comments
