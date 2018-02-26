Feature: Test Zoo site

 Background:
   Given I am on the home page of Zoo site

  Scenario: Adopt  an animal
    When I goto Adoption page and check for turtle availability
    And I adopt an animal
    Then I should see success_msg

  Scenario: Animal not available for adoption
    When I goto Adoption page and check for lion availability
    Then I should see unavailable_msg