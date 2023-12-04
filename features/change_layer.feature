Feature: Changing layer
  As an user, On the map page, I want to be able to change the layer of the map, so that I can see different information on the map.

    Scenario: Change layer
        Given I am on the map page
        When I click on the layer button
        Then I should see a list of layers
        When I click on a layer
        Then I should see the map with the selected layer