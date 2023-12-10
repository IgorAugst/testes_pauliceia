Feature: As an user, I want to be able to login and logout from my account so that I can access and leave my profile.

  Background: User is logged in
    Given I am on the login page
    When I fill in my account information "admin@admin.com" and "admin"
    And I press Entrar
    Then I should be on home page

  Scenario: Logout from the account
    Given I am on the home page
    When I click on the profile button
    And I click on the logout button
    Then I should find "Entrar" on the page