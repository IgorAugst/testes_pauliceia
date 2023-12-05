Feature: As an user, so that I can create a new account, I want to be able to sign up

  Scenario: Creating an account
    Given I am on the sign up page
    When I fill in my "name" "email@email.com" "username" "password"
    And I agree to the terms of service
    And I click on the Cadastrar button
    Then I should receive a "SUCESSO" message

  Scenario: Creating an existing account
    Given I am on the sign up page
    When I fill in my "name" "email@email.com" "username" "password"
    And I agree to the terms of service
    And I click on the Cadastrar button
    Then I should receive a "ERROR" message