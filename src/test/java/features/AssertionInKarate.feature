Feature: using match keyword

  Scenario: some matching example
    * def name = 'Severus Snape'
    * match name =='Severus Snape'
    #smilar to assertEquals(name, "Severus Snape")

    * match name != 'Tom riddle'


    Scenario: more matching example
      * def employee =
      """
      {
      "first_name": "TJ",
      "salary": 24001,
      "active": true
      }
      """

      * def emp_name = employee.first_name
      * match emp_name == 'TJ'
      * match employee.salary == 24001


      @wip
      Scenario: fuzzy matching
        * def employee =
        """
        {
      "first_name": "TJ",
      "salary": 24001,
      "active": true
      }
        """

        * match employee.first_name == '#string'
        * match employee.salary == '#number'





    