Feature: Delete Booking
  
  Background:
    * def responseCreateToken = call read("classpath://features/CreateToken.feature")
    * def responseCreateBooking = call read("classpath://features/CreateBooking.feature")

  Scenario: Verify user can delete a booking
    Given url host
    And header Cookie = "token=" + responseCreateToken.response.token
    And path "/booking/"+responseCreateBooking.response.bookingid
    When method delete
    Then status 201
    And print response
    