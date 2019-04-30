@randomimagelinkforgolden
Feature: Get retriever list

Background:

* url 'https://dog.ceo/api/breed/retriever/golden/images/random'
Scenario: ***********************Grandomimagelinkforgolden****************************************************

    Given url 'https://dog.ceo/api/breed/retriever/golden/images/random'
    When method get
    Then assert responseStatus == 200
    And assert responseTime < 6000
    And match response.status == 'success'

