Feature: Flujo completo PetStore

  Background:
    * url baseUrl
    * def petId = Math.floor(Math.random() * 100000)

  Scenario: CRUD de mascota

    # 1. Añadir mascota
    Given path 'pet'
    And request
      """
      {
    "id": #(petId),
    "name": "Guffi",
    "status": "available"
    }
    """
    When method POST
    Then status 200
    And match response.id == petId
    * print 'RESPONSE CREATE:', response
    And def createdPet = response

    # 2. Consultar por ID
    Given path 'pet', petId
    When method GET
    Then status 200
    And match response.name == "Guffi"
    * print 'RESPONSE GET BY ID:', response

    # 3. Actualizar mascota
    Given path 'pet'
    And request
      """
      {
    "id": #(petId),
    "name": "Firulais",
    "status": "sold"
    }
    """
    When method PUT
    Then status 200
    And match response.status == "sold"
    * print 'RESPONSE UPDATE:', response

    # 4. Consultar por status
    Given path 'pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200
    And match response[*].status contains 'sold'
    * print 'RESPONSE FIND BY STATUS:', response