@requiresLogin
Feature: Login Page Test Cases

  @Positive
  Scenario: Login with valid email and password
    Given I launch the application
    When I enter email "ysappofficial@gmail.com" and password "okayButWhy#28"
    And I click on login button
    Then I should be logged in successfully
  
  @Positive
  Scenario: Verify session persistence while browsing
    Given I am logged in with email "ysappofficial@gmail.com" and password "okayButWhy#28"
    When I navigate to "Electronics" category
    Then My session should remain active

  @Negative
  Scenario: Login with blank fields
    Given I launch the application
    When I try to login with blank email and password
    Then I should see "Email/Password required" message

  @Negative
  Scenario: Login with invalid email and password
    Given I launch the application
    When I enter email "wronguser@sahil.com" and password "SahilSharma"
    And I click on login button
    Then I should see "Invalid credentials" error messagea

 

 
