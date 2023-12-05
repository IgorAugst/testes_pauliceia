Feature: Search for a place
  As an user
  So that I can locate a place in a specific year
  I want to be able to search for a place

    Scenario: Search for a existing place
        Given I am on the map page
        When I fill in "Busca" with "rua doutor martinico prado, 29, 1909"
        And I press "btn btn-search"
        Then I should find "rua doutor martinico prado, 29, 1909"

    Scenario: Search for a non existing place
Given I am on the map page
        When I fill in "Busca" with "rua nao existe, 29, 1909"
        And I press "btn btn-search"
        Then I should not find "rua nao existe, 29, 1909"