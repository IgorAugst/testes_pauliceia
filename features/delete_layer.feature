Feature: Deleting a layer
  As an user
  I want to delete a layer

  Scenario: Delete confirmation
    Given I am on the login page
    When I fill in my account information "admin@admin.com" and "admin"
    And I press Entrar
    And I visit the Dashboard page
    And I click on Delete Layer button
    Then I should see a confirmation box
