Feature: Ticket management

Scenario: Should be able to view all tickets
Given tickets created
When I visit the tickets index page
Then I should see all tickets

Scenario: Should be able to view show link
Given tickets created
When I visit the tickets index page
Then I should see show link

Scenario: Should be able to view Ticket Details
Given tickets created
When I visit the tickets index page
When I clicked on "Show" link within "table"
Then I should see Ticket details

Scenario: Should be able to view Excavator Details
Given tickets created
When I visit the tickets index page
When I clicked on "Show" link within "table"
Then I should see Excavator details

