Given(/^it is (\d+)pm$/) do |time|
end

When(/^I want to travel from "(.*?)" to "(.*?)"$/) do |start, finish|
  enter_text_into_numbered_field start, 1
  enter_text_into_numbered_field finish, 2
  press_button_with_text 'Plan Journey'
end

Then(/^I should see a train at "(.*?)"$/) do |time|
  assert_text time, true
end
