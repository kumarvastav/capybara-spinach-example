Feature: Search

  @Smoke
  Scenario: Search for a keyword
    When I visit the page
    And I enter the search keyword
    And Click on search button
    Then I should see search results page