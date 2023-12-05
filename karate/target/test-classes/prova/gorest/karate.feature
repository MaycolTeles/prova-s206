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

Scenario: Testando retorno 200 para options
    Given url url_base
    And path "/users"
    When method options
    Then status 200


# Scenario: Testando retorno 200 para hitmonlee e verificando o JSON
#     Given url url_base
#     And path "/pokemon/hitmonlee/"
#     When method get
#     Then status 200
#     And match response.name == "hitmonlee"
#     And match response.id == 106
#     And match response.abilities[0].ability.name == "limber"

# Scenario: Testando retorno 200 para charizard e verificando o JSON
#     Given url url_base
#     And path "/pokemon/charizard/"
#     When method get
#     Then status 200
#     And match response.name == "charizard"
#     And match response.id == 6
#     And match response.abilities[0].ability.name == "blaze"
#     And def localizacao = $response.location_area_encounters
#     And print localizacao
#     And url localizacao
#     When method get
#     Then status 200


# Scenario