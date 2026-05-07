Feature: PetStore API Testig Json
  Background:
    * url baseUrl

  Scenario: Crear mascota usando JSON externo

    * def requestBody = read('../data/createPet.json')

    Given path '/pet'
    And request requestBody
    When method POST
    Then status 200
    * print response

    And match response.name == requestBody.name
    And match response.status == requestBody.status

  Scenario: Consultar mascota por ID

    * def requestBody = read('../data/createPet.json')

    Given path '/pet', requestBody.id
    When method GET
    Then status 200
    And match response.id == requestBody.id
    * print response

  Scenario: Actualizar mascota

    * def updateBody = read('../data/updatePet.json')

    Given path '/pet'
    And request updateBody
    When method PUT
    Then status 200

    And match response.name == "Guffi"
    And match response.status == "sold"
    * print response

  Scenario: Buscar mascotas por status sold

    Given path '/pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200

    And match response[*].status contains 'sold'
    * print response