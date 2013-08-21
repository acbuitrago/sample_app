Feature: Weight Calculator Miller Men
  In order to calculate my ideal weight
  As a user
  I want to enter my height and know my ideal weight according to the Miller formula


  Scenario: Enter a 0 height for miller
    Given I have entered 0 inches in the height field for miller
    When I press calculate using miller
    Then I should see an error message of miller

   Scenario: I have entered a negative value in the height field for miller
    Given I have entered a negative height for miller
    When I press calculate using miller
    Then I should see an error message of miller

  Scenario: Miller formula
    Given I have entered 60 inches in the height field
    When the user submits valid height information using miller
    Then he should see his ideal weight in lb, 123.64lb using miller

   Scenario: I have entered a string value in the height field
    Given I have entered a string height
    When I press calculate
    Then I should see an error messsage