@getalldogslist
Feature: Get list of all dogs

Background:

* url 'https://dog.ceo/api/breeds/list/all'
Scenario: ***********************Get list of all dogs****************************************************

    Given url 'https://dog.ceo/api/breeds/list/all'
    When method get
    Then status 200

