When /^I visit (.+)$/ do |search_engine|
  case search_engine
  when "Google"
    visit "http://www.google.com"
  when "Yahoo!"
    visit "http://www.yahoo.com"
  end
end

When /^I type "(.+)" in the search box$/ do |term|
  fill_in "q", :with => term
end

When /^I press "(.+)"$/ do |button|
  click_button(button)
end

Then /^I should see "(.+)"$/ do |text|
  response_body.should contain(text)
end
