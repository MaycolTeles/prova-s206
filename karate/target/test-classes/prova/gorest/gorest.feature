Feature: Testando API Go Rest

Background: Executa antes de cada teste
    * def url_base = "https://gorest.co.in/public/v2"

Scenario: Testando retorno 200 para users
    Given url url_base
    And path "/users"
    When method get
    Then status 200

Scenario: Testando retorno 200 para usuário com id 5710543
    Given url url_base
    And path "/users/5710543"
    When method get
    Then status 200
    And match response.name == "Karthik Sethi"
    And match response.status == "active"

Scenario: Testando retorno 200 para posts com id 1830420
    Given url url_base
    And path "/posts/1830420/comments"
    When method get
    Then status 200


Scenario: Testando retorno 404 para usuário com id 999
    Given url url_base
    And path "/users/999"
    When method get
    Then status 404


Scenario: Testando retorno 404 para post com id 12
    Given url url_base
    And path "/posts/12"
    When method get
    Then status 404
