Feature: PetStore API Negative Testing

  Background:
    * url baseUrl


  Scenario: Consultar mascota inexistente

    Given path '/pet', 999999999
    When method GET
    Then status 404


  Scenario: Crear mascota inválida

    * def invalidBody = read('../data/invalidPet.json')

    Given path '/pet'
    And request invalidBody
    When method POST
    Then status 200

    # Hallazgo:
    # La API permite datos inválidos