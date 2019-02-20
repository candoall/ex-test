Given('tickets created') do
  create_tickets
end

When('I visit the tickets index page') do
  visit tickets_path
end

Then('I should see all tickets') do
  expect_contents all_request_numbers
end

Then('I should see show link') do
  expect(page).to have_link('Show')
end

When("I clicked on {string} link within {string}") do |link, container|
  within(container) do
    click_link(link, match: :first)
  end
end

Then("I should see Ticket details") do
  expect_contents ticket_details
end

Then("I should see Excavator details") do
  expect_contents excavator_details
end
