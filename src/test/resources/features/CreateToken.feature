Feature: Token generation 

  Background:
    * def body = read("classpath://json/create_token.json")

  Scenario: verify user can create a token
    Given url host
    And path "/auth"
    When header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method post
    Then status 200
    And print response
