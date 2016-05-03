Given(/I visit the website/) do
  visit('/')
end

When(/^I click on "(.*?)"$/) do |text|
  click_on(text)
end

When(/^I fill in "([^\"]*)" with "([^\"]*)"$/) do |field, value|
  fill_in(field, with: value, match: :prefer_exact)
end

Then(/^page should have content "([^\"]*)"$/) do |content|
  expect(page).to have_content(content)
end

Then(/^page should not have content "([^\"]*)"$/) do |content|
  expect(page).not_to have_content(content)
end
