Feature: Leads
  As a RD user
  I want to manage my leads
  In order to improve my business

  @bug
  Scenario: Searching for an existing lead
    Given I am on the leads page
    When I search for lead "Pablo Menezes"
    And press Enter
    Then I should see "Pablo Menezes" in the list

  Scenario: Editing the name of the lead
    Given I am on the leads page
    And I click on "Pablo Menezes" lead
    And I click on Edit button
    And change the lead name to "Edited Lead"
    When I click at Salvar button
    Then I should see the "Edited Lead" page

  Scenario: Adding a new company
    Given I am on the leads page
    And I click on Empresas link
    And I click on Inserir Empresa button
    And fill the field name with "Automated Company"
    And I click on Salvar button
    And the name of the company should be "Automated Company"

  Scenario: Deleting a Company
    Given I am on the leads page
    And I click on Empresas link
    And I click in "Automated Company" company
    And click on the arrow
    When I click on Apagar button
    And select OK
    Then I should not see the company on the list

  Scenario: Deleting a lead
    Given I am on the leads page
    And I click on "Edited Lead" lead
    And I click on the arrow menu
    And I click on Apagar lead link
    And select OK
    Then I should not see the lead on the list
