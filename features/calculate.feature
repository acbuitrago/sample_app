Feature: Weight Calculator Devine Men
  In order to calculate my ideal weight
  As a user
  I want to enter my height and know my ideal weight according to the BMI formula


  Scenario: Enter a 0 height
    Given I have entered 0 inches in the height field
    When I press calculate
    Then I should see an error message

  Scenario: I have entered a negative value in the height field
    Given I have entered a negative height
    When I press calculate
    Then I should see an error messsage

  Scenario: Devine formula
    Given I have entered 50 inches in the height field
    When the user submits valid height information
    Then he should see his ideal weight in lb, 59.4lb