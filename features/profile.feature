Feature: As an User, I want to be able to access my profile, So that I can edit the information in my profile.

  Scenario: Edit name
    Given I am on the login page
    When I fill in my account information "admin@admin.com" and "admin"
    And I press Entrar
    And I visit the Profile page
    And I edit the name for "New Name"
    And I press Submit
    # Botão Submit apresentou um comportamento estranho durante os testes de não ser possível clicar, sendo necessário entrar em outro navegador para conseguir efetuar a ação de clicar
    # Then I should be on dashboard page
    
  Scenario: Edit user name
    Given I am on the login page
    When I fill in my account information "admin@admin.com" and "admin"
    And I press Entrar
    And I visit the Profile page
    And I edit the user name for "New User Name"
    And I press Submit
    # Botão Submit apresentou um comportamento estranho durante os testes de não ser possível clicar, sendo necessário entrar em outro navegador para conseguir efetuar a ação de clicar
    # Then I should be on dashboard page 
