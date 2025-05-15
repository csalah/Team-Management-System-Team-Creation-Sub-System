Feature: Set up team creation parameters

  Scenario: Instructor sets up parameters successfully
    Given the instructor is logged in
    And the instructor is teaching the course
    And valid parameters are provided
    When the application command setUpParameters is invoked
    Then the team creation parameters are set
    And a confirmation message is displayed

  Scenario: Instructor tries to set up parameters with invalid values
    Given the instructor is logged in
    And invalid parameters are provided
    When the application command setUpParameters is invoked
    Then an error message is displayed indicating invalid parameters