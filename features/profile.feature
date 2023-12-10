Feature: As an User, I want to be able to access my profile, So that I can edit the information in my profile.

  Scenario: Edit name
    Given I am on the Profile page
    When I edit the name for "New Name"
    And I press Submit
    Then I should be on dashboard page
    
  Scenario: Edit user name
    Given I am on the Profile page
    When I edit the user name for "New User Name"
    And I press Submit
    Then I should be on dashboard page
