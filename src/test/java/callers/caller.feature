Feature: my callers features

  Background:
    * url baseUrl

  @name=post
  Scenario: post request callers
    * path "pet"
    * def myBody = read('classpath:data/myJson.json')
    * request myBody
    * method POST
    * status 200
    * print response


  @name=get
  Scenario: get requests callers
    * path "pet", id
    When method GET
    Then status 200
    * print response