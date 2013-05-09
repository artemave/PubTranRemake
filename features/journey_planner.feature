Feature: Journey planner

  Scenario: check my train home
    Given it is 6pm
    When I want to travel from "Farringdon" to "Sutton"
    Then I should see a train at "18:29"
    And I should see a train at "18:53"
