Feature: User can create a booking

  Background:
    * def body = read("classpath://json//create_booking.json")

  Scenario: verify user can post a booking
    Given url host
    And path "/booking"
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method post
    Then status 200
    And print response