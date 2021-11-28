Feature: Kata 2 Crud Reguest


  Scenario:Reading data from json
    * def MyVar = read('classpath:data/myJson.json')
    * print Myvar

  Scenario:Reading data from json nad set new value
     * def myVar = read('classpath:data/myJson.json')
     * myVar.name = 'my_name'
     * print  myVar


  Scenario Outline:  printing table variables
    * print  id
    Examples:
      |id|
      |250|
      |251|
      |252|

  Scenario Outline:  printing table variables
    Examples:
      |id|
      |254|
      |255|
      |252|
    When method GET
    Then status 200

