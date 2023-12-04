Feature: Search for a place
  As an user
  So that I can locate a place in a specific year
  I want to be able to search for a place

    Scenario: Search for a existing place
        Given I am on the map page
        When I fill in "Busca" with "Rua 1, 2, 1900"
        And I press "btn btn-search"
        Then I should find "Rua 1, 2, 1900"