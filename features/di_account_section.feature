
Feature: I am a Lending Stream tester & I want to verify DI Account Section Values


  @LendingStream @AccountSummary @LSCheck
  Scenario Outline: Verify no of Loans Displayed
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I verify the no of loans displayed
    And I take a screenshot

  Examples:
  |   user no    |
  |   3615226    |


  @NoLendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Refresh the Account Summary
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I Refresh
    And I take a screenshot

  Examples:
  |   user no    |
  |   3615226    |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Verify Loan Amount
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I verify Loan Amount for loan <loan no> in Summary page
    And I take a screenshot

  Examples:
  |   user no    |   loan no  |
  |   3615236    |      1     |
  |   3615236    |      2     |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Verify Due
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I verify Amount Due for loan <loan no> in Summary page
    And I take a screenshot

  Examples:
  |   user no    |   loan no  |
  |   3615236    |      1     |
  |   3615236    |      2     |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Verify Opened Date
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I verify Loan opened date for loan <loan no> in Summary page
    And I take a screenshot

  Examples:
  |   user no    |   loan no  |
  |   3615236    |      1     |
  |   3615236    |      2     |


  @LendingStream @AccountSummary
  Scenario Outline: Verify Due Date
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I verify Due Date for loan <loan no> in Summary page
    And I take a screenshot

  Examples:
  |   user no    |   loan no  |
  |   3615236    |      1     |
  |   3615236    |      2     |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Verify Agreement No
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I verify Agreement No for loan <loan no> in Summary page

  Examples:
  |   user no    |   loan no  |
  |   3615236    |      1     |
  |   3615236    |      2     |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Verify Payment Completed View
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    And I scroll to loan <loan no> and select it
    And I take a screenshot

  Examples:
  |   user no    |   loan no  |
  |   3615226    |      3     |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Apply for a New Loan
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    And I Apply for a new loan
    And I take a screenshot

  Examples:
  |   user no    |
  |   3615226    |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Continue the Pending Application
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    And I Continue the Pending Application process
    And I take a screenshot

  Examples:
  |   user no   |
  |   3615220   |


  @LendingStream @AccountSummary
  Scenario Outline: Verify Company Disclosure
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    And I click on DI Company Disclosure link
    And I check the Responsible Lending displayed is correct
    Then I take a screenshot

  Examples:
  |   user no    |
  |   3615226    |


  @LendingStream @LSNativeApp @AccountSummary
  Scenario Outline: Verify Company Disclosure
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    And I click on DI Company Disclosure link
    Then I take a screenshot

  Examples:
  |   user no    |
  |   3615226    |


  @LendingStream  @AccountSummary
  Scenario Outline: Verify Company Disclosure
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    And I click on DI Company Disclosure link
    Then I check the Lending Stream Address displayed is correct
    Then I take a screenshot

  Examples:
  |   user no    |
  |   3615226    |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Verify Warning Message
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I check the Warning Message displayed is correct
    Then I take a screenshot

  Examples:
  |   user no    |
  |   3615226    |


  @LendingStream @AccountSummary @LSNativeApp
  Scenario Outline: Verify Representative APR
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    And I check the Rep APR displayed is correct
    And I take a screenshot

  Examples:
  |   user no    |
  |   3615237    |
  |   3615243	  |
  |   3615245    |


  @LendingStream @AccountSummary @LSQuickRun
  Scenario Outline: Quick run to check all cases in LS app
    Given I am on the Lending Stream Welcome Screen
    When I login to LS App with the credentials of User <user no>
    Then I verify the no of loans displayed
    And I take a screenshot
    Then I Refresh
    And I take a screenshot
    Then I verify Loan Amount for loan <loan no> in Summary page
    Then I verify Loan Amount for loan <loan no1> in Summary page
    Then I verify Due Date for loan <loan no> in Summary page
    Then I verify Due Date for loan <loan no1> in Summary page
    Then I verify Loan opened date for loan <loan no> in Summary page
    Then I verify Loan opened date for loan <loan no1> in Summary page
    Then I verify Agreement No for loan <loan no> in Summary page
    Then I verify Agreement No for loan <loan no1> in Summary page
    And I take a screenshot
    And I scroll to loan <loan no1> and select it
    And I take a screenshot
    And I go back
    And I click on DI Company Disclosure link
    And I check the Responsible Lending displayed is correct
    Then I check the Lending Stream Address displayed is correct
    And I take a screenshot
    And I go back
    And I check the Rep APR displayed is correct
    And I take a screenshot
    And I logout
    When I login to LS App with the credentials of User <user no1>
    And I check the Rep APR displayed is correct
    And I take a screenshot
    And I logout
    When I login to LS App with the credentials of User <user no2>
    And I check the Rep APR displayed is correct
    And I take a screenshot
    And I logout
    When I login to LS App with the credentials of User <user no3>
    And I Continue the Pending Application process
    And I take a screenshot
    And I Continue the Pending Application process
    And I take a screenshot
    And I logout
    When I login to LS App with the credentials of User <user no4>
    Then I check the Warning Message displayed is correct
    Then I take a screenshot
    Then I verify the no of loans displayed
    And I Apply for a new loan
    Then I take a screenshot
    And I logout
    Then I take a screenshot

    Examples:
    |   user no    |   loan no  | loan no1 | user no1 | user no2     | user no3 | user no4|
    |   3615236    |      1     |    2     | 3615243  |   3615245    |  3615220 | 3615226 |
