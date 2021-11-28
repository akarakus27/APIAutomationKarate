Feature: My first kata test



  Scenario: first print task
    * print 'Hello World!'
    * karate.log("my first log!")

  Scenario: Define and print variable
    * a=5
    * print  a

  Scenario: variable printing
    * def myVar = 'Hello world'
    * def MySecondVar = 15
    * print myVar , MySecondVar

  Scenario: config print task
    * print appId

  Scenario: json print task
      * def myJson =
    """
    {
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
    """
  * print myJson



