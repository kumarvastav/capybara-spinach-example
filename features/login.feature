Feature: Login

  Scenario: Login Fails for wrong username
    When I visit the page
    And I should be able to enter invalid username
    And I should be able to enter valid password
    And Click on the submit
    Then I should see an error message

  Scenario: Login Fails for wrong password
    When I visit the page
    And I should be able to enter valid username
    And I should be able to enter invalid password
    And Click on the submit
    Then I should see an error message

  Scenario: Login successful
    When I visit the page
    And I should be able to enter valid username
    And I should be able to enter valid password
    And Click on the submit
    Then I should see login page