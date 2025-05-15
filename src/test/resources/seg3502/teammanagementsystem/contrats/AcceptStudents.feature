Feature: Accept students into a team

  Scenario: Liaison accepts students successfully
    Given the liaison is logged in
    And the liaison has a team
    And the team has pending requests from students to join
    And adding these students will not exceed the maximum team size
    When the application command acceptStudents is invoked with the list of student IDs
    Then the selected students are added to the team
    And notifications are sent to the new team members

  Scenario: Liaison tries to accept students but team size would exceed maximum
    Given the liaison is logged in
    And the liaison has a team
    And the team has pending requests from students to join
    And adding these students would exceed the maximum team size
    When the application command acceptStudents is invoked with the list of student IDs
    Then an error message is displayed indicating the team size limit would be exceeded