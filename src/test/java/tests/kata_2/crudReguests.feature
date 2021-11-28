Feature: Crud reguets with extarnal files

  Background:
    Given url baseUrl

  Scenario: post reguset with json
    And path 'pet'
    And def myBody = read('classpath:data/myJson.json')
    And set myBody.name = 'Karakus'
    And set myBody.id = 2012
    And request myBody
    When method POST
    Then status 200
    And match response.id == myBody.id
    And match response.name == myBody.name
    And match response.status == myBody.status
    And match response == myBody

  Scenario Outline: get pet from table
    And  path 'pet' , id
    When method GET
    Then status 200
    Examples:
      |id|
      |250|
      |251|
      |252|
      |253|

  Scenario Outline: get pet from table
    And path 'pet', id
    When method GET
    Then status 200
    Examples:
      |id|
      |250|
      |251|
      |252|
      |253|


  Scenario Outline: get data from csv
    And path 'pet' , id
    When method GET
    Then status 200

    Examples:
      |read('classpath:data/deneme.csv')|


  Scenario Outline: pıst ada
    And path 'pet'
    And def myBody = read('classpath:data/myJson.json')
    And set myBody.id = id
    And set myBody.name = name
    And set myBody.status = status
    And request myBody
    When method POST
    Then status 200
    Examples:
      |read('classpath:data/myCSV.csv')|

  Scenario Outline: post request from table
    And path 'pet'
    And def myBody = read('classpath:data/myJson.json')
    And set myBody.id = id
    And set myBody.name = name
    And set myBody.status = status
    And request myBody
    When method POST
    Then status 200

    Examples:
      | read('classpath:data/myCSV.csv') |

