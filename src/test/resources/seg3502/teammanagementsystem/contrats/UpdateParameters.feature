Feature: Update team creation parameters

  Scenario: Instructor updates parameters successfully
    Given the instructor is logged in
    And valid new parameters are provided
    When the application command updateParameters is invoked
    Then the team creation parameters are updated
    And a confirmation message is displayed

  Scenario: Instructor tries to update parameters with invalid values
    Given the instructor is logged in
    And invalid new parameters are provided
    When the application command updateParameters is invoked
    Then an error message is displayed indicating invalid parameters