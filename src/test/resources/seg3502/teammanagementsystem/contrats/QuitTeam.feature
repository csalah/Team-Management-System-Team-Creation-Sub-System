Feature: Quit a team

  Scenario: Student quits a team successfully
    Given the student is logged in
    And the student is a member of a team
    When the application command quitTeam is invoked with the team ID
    Then the student is removed from the team
    And a notification is sent to the student