Feature: Remove a member from a team by Instructor

  Scenario: Instructor removes a student from a team successfully
    Given the instructor is logged in
    And the instructor has selected a team
    And the student is a member of the team
    When the application command removeTeamMember is invoked with the team ID and student ID
    Then the student is removed from the team
    And a notification is sent to the student