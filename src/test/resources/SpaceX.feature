@smoke
Feature: Validate space X API

  Scenario: Get latest launch screen and validate one of the flight number and name
    When Get the latest launch
    Then Verify status code is "200"
   And Verify REST response for below values
      | flight_number | 133                |
      | name  | CRS-23 |
    

  Scenario: Get roadster name and launch date
    When Get the roadster details
    Then Verify status code is "200"
     And Verify REST response for below values
      | name   | Elon Musk's Tesla Roadster  |
      
   

  Scenario: Get the company details
    When Get the company details
    Then Verify status code is "200"
    And Verify REST response for below values
      | ceo   | Elon Musk |
      | employees | 9500 |
    