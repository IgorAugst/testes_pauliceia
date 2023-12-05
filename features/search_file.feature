Feature: Search streets using csv file
  As a user I want to be able to search multiple streets using a csv file

    Scenario: Search streets using csv file
        Given I am on the map page
        When I click on expand search
        And I upload a csv file
        And I set the csv column
        And I click on visualizar
        Then I should see the results of the search

