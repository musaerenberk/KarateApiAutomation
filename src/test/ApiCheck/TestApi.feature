Feature: Test API


  Scenario: testing the get call for user details
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

  Scenario: Delete request
    Given url 'https://www.kloia.com/'
    And path 'user', 129
    When method DELETE
    Then status 204

  Scenario: Create a person

    Given url  = 'http://localhost:8080/api/person/'
    And request { firstName: 'John', lastName: 'Doe', age: 30 }
    When method POST
    Then status 200
    And match response == '0'

  Scenario: Get person we just created

    Given path 'http://localhost:8080/api/person/0'
    When method GET
    Then status 200
    And match response == { firstName: 'John', lastName: 'Doe', age: 30 }