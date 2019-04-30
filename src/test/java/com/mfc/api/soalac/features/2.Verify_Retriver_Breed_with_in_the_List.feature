@verifyRetrieverbreedwithinthelist
Feature: Get list of all dogs

Background:

* url 'https://dog.ceo/api/breeds/list/all'
Scenario: ***********************validate retriever breed exists****************************************************

    Given url 'https://dog.ceo/api/breeds/list/all'
    When method get
    Then status 200
    And match response.status.message contains '#(^retriever)'

