Feature: Manage advertisements
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new advertisement
    Given I am on the new advertisement page
    When I fill in "Title" with "title 1"
    And I fill in "Body" with "body 1"
    And I press "Create"
    Then I should see "title 1"
    And I should see "body 1"

  Scenario: Delete advertisement
    Given the following advertisements:
      |title|body|
      |title 1|body 1|
      |title 2|body 2|
      |title 3|body 3|
      |title 4|body 4|
    When I delete the 3rd advertisement
    Then I should see the following advertisements:
      |Title|Body|
      |title 1|body 1|
      |title 2|body 2|
      |title 4|body 4|
