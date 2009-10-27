Feature: Searching Google
  As a Cucumber neophyte
  I want to see a demonstration of Cucumber and Webrat
  In order to understand how Cuke works
  
  Scenario: Basic Search
    Given I visit Google
    And I type "LOLCAT" in the search box
    When I press "Google Search"
    Then I should see "I Can Has Cheezburger"
    
  Scenario Outline: More Searching
    Given I visit <search engine>
    And I type "<search term>" in the search box
    When I press "<search button>"
    Then I should see "<search result>"
    
    Examples:
    | search engine | search button | search term | search result         |
    | Google        | Google Search | LOLCAT      | I Can Has Cheezburger |
    | Yahoo!        | Web Search    | Slashdot    | News for nerds        |