Feature: Add a student to a team by Instructor

  Scenario: Instructor adds a student to a team successfully
    Given the instructor is logged in
    And the instructor is teaching the course
    And the instructor has selected a team
    And the team is not full
    And the student is registered in the course
    And the student is not already a member of any team
    When the application command addTeamMember is invoked with the team ID and student ID
    Then the student is added to the team
    And the team is updated
    And a notification is sent to the student

  Scenario: Instructor tries to add a student who is already in a team
    Given the instructor is logged in
    And the instructor is teaching the course
    And the instructor has selected a team
    And the student is already a member of another team
    When the application command addTeamMember is invoked with the team ID and student ID
    Then an error message is displayed indicating the student is already in a team

  Scenario: Instructor tries to add a student but the team is full
    Given the instructor is logged in
    And the instructor has selected a team that is full
    When the application command addTeamMember is invoked with the team ID and student ID
    Then an error message is displayed indicating the team is full