Feature: Modify team parameters

  Scenario: Instructor modifies team parameters successfully
    Given the instructor is logged in
    And the instructor has selected a team
    And new valid parameters are provided
    When the application command modifyTeamParameters is invoked
    Then the team's parameters are updated
    And a confirmation message is displayed

  Scenario: Instructor tries to modify team parameters with invalid values
    Given the instructor is logged in
    And the instructor has selected a team
    And invalid parameters are provided
    When the application command modifyTeamParameters is invoked
    Then an error message is displayed indicating invalid parameters