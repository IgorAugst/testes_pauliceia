Feature: As an User, I want to be able to access my profile, So that I can edit the information in my profile.

  Scenario: Edit name
    Given I am on the login page
    When I fill in my account information "admin@admin.com" and "admin"
    And I press Entrar
    And I press Profile
    And I press My Profile
    And I edit the name for "New Name"
    And I press Submit
    Then I should be on dashboard page
    
  Scenario: Edit user name
    Given I am on the login page
    When I fill in my account information "admin@admin.com" and "admin"
    And I press Entrar
    And I press Profile
    And I press My Profile
    And I edit the user name for "New User Name"
    And I press Submit
    Then I should be on dashboard page
