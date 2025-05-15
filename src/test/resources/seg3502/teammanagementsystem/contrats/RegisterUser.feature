Feature: Register a new user (Instructor, Student)

  Scenario: User registers successfully with all required information
    Given the user is not registered
    And the user provides all required information
    When the application command registerUser is invoked
    Then a new user account is created
    And a confirmation message is displayed

  Scenario: User tries to register with incomplete information
    Given the user is not registered
    And the user provides incomplete information
    When the application command registerUser is invoked
    Then an error message is displayed indicating missing information