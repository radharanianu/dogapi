@getretriever_sub_list
Feature: Get retriever list

Background:

* url 'https://dog.ceo/api/breed/retriever/list'
Scenario: ***********************get retiever sub list***************************************************

    Given url 'https://dog.ceo/api/breed/retriever/list'
    When method get
    Then assert responseStatus == 200
    And assert responseTime < 6000
    And match response.status == 'success'
	And match response.message == ["chesapeake","curly","flatcoated","golden"]

