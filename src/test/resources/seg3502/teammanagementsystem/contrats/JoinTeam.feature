Feature: Join a team

  Scenario: Student requests to join a team successfully
    Given the student is logged in
    And the student is not a member of any team
    And the student has selected an incomplete team
    When the application command joinTeam is invoked with the team ID
    Then the student's request is added to the team's pending list
    And the student's status is set to pending