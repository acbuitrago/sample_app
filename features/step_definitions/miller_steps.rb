Given(/^I have entered (\d+) inches in the height field for miller$/) do |h|
  visit '/miller_controller/home'
   @height= h.to_i
end

When(/^I press calculate using miller$/) do
  click_button "Calcula mi peso ideal!"
end

Then(/^I should see an error message of miller$/) do
  expect(page).to have_selector('div.alert.alert-error')
end


Given(/^I have entered a negative height for miller$/) do
  visit '/calculate_pages/new'
  @height= -1
end

When(/^the user submits valid height information using miller$/) do
  fill_in "altIn", with: @height.to_i
  click_button "Calcula mi peso ideal!"
end

Then(/^he should see his ideal weight in lb, (\d+)\.(\d+)lb using miller$/) do |arg1, arg2|
  expect(page).to have_title("Resultados")
end

Given(/^I have entered a string height$/) do
  visit '/calculate_pages/new'
  @height= 'hello'
end