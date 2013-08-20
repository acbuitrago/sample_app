
Given(/^I have entered (\d+) inches in the height field$/) do |h|
  visit '/calculate_pages/new'
   @height= h.to_i
end

When(/^I press calculate$/) do
  click_button "Calcula mi peso ideal!"
end

Then(/^I should see an error message$/) do
  expect(page).to have_selector('div.alert.alert-error')
end

Given(/^I have entered a negative height$/) do
  visit '/calculate_pages/new'
  @height= -1
end

Then(/^I should see an error messsage$/) do
  expect(page).to have_selector('div.alert.alert-error')
end

When(/^the user submits valid height information$/) do
  fill_in "altIn", with: @height.to_i
  click_button "Calcula mi peso ideal!"
end

Then(/^he should see his ideal weight in lb, (\d+)\.(\d+)lb$/) do |arg1, arg2|
  expect(page).to have_title("Resultados")
end
