Feature: As an user, I want to be able to login to my account so that I can access my profile.

  Scenario: Login with correct password
    Given I am on the login page
    When I fill in my account information "admin@admin.com" and "admin"
    And I press Entrar
    Then I should be on home page

  Scenario: Login with wrong password
    Given I am on the login page
    When I fill in my account information "admin@admin.com" and "wrongpassword"
    And I press Entrar
    Then I should receive an error "E-mail ou senha incorreta!"