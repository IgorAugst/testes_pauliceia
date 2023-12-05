Feature: Change the language to english
  As a user I want to change the language to english
  So that I can understand the content of the website

  Scenario: Changing the language to english
    Given I am on the map page
    When I click on the language button
    Then the language should change to english