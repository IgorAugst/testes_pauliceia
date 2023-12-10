Feature: Zoom on the map
  As an user, I want to be able to zoom on the map, so that I can see the map in more detail.

    Scenario: Zoom in on the map using the zoom in button
        Given I am on the map page
        When I click on the "ol-zoom-in" button
        Then the map scale should be "20000 km"

    Scenario: Zoom out on the map using the zoom out button
        Given I am on the map page
        When I click on the "ol-zoom-out" button
        Then the map scale should be "100000 km"