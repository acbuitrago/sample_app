Feature: Weight Calculater

  Scenario: Unsuccessful
    Given a user visits the calculate_pages/new page
    When he submits invalid height information
    And he chooses the BMI Formula
    Then he should see an error message

  Scenario: Successful signin
    Given a user visits the calcualte_page/new page
    When the user submits valid height information
    And he chooses the BMI Formula
    Then he should see his ideal weight