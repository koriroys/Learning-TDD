Feature: Validating Passwords

  Scenario: valid info
    Given a user with username of "eric" and password of "password"
    Then I should have "1" user
    When I try to log in with username "eric" and password "password"
    Then I should be authenticated
 
  Scenario: invalid password 
    Given a user with username of "eric" and password of "password"
    When I try to log in with username "eric" and password "badpassword"
    Then I should not be authenticated
  
  Scenario: invalid username
    Given a user with username of "eric" and password of "password"
    When I try to log in with username "bob" and password "password"
    Then I should not be authenticated
  
  
