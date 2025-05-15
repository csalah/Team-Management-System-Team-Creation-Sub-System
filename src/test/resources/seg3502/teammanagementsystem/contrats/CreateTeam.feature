Feature: Create a new team

  Scenario: Student creates a new team successfully
    Given the student is logged in
    And the student is not a member of any team
    And the team name is unique
    And team information is provided
    And the team information includes valid members
    When the application command createTeam is invoked
    Then a new team is created
    And the team is initialized from the team information
    And the student is added as a member
    And the student is set as the team liaison

  Scenario: Student tries to create a team with a name already in use
    Given the student is logged in
    And the team name is already in use
    When the application command createTeam is invoked
    Then an error message is displayed indicating the team name is already in use

  Scenario: Student tries to create a team with members already in another team
    Given the student is logged in
    And team information is provided
    And the team information includes members already in another team
    When the application command createTeam is invoked
    Then an error message is displayed indicating some members are already in another team