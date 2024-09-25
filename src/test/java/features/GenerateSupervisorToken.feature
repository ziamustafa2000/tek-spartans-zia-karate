@Regression
Feature: Testing Account APIs

  @account_1
  Scenario: Testing api/account/get-account
    Given: url BASE_URL

    * def generateTokenResult = callonce read('generateSupervisorToken.feature')
    Then generateTokenResult
    * def validToken = "Bearer " + generateTokenResult.response.token
    Given path "/api/accounts/get-account"
    Given header Authorization = validToken
    * def accountId = 9479
    Given pram primaryPersonId = accountId
    When method get
    Then status 200
    Then assert response.primaryPerson.id == accountId



