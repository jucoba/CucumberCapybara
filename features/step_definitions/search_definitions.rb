Given /^I open Google$/ do
  visit 'http://www.google.com.co'
end

When /^I searc "(.*?)"$/ do |arg1|
  fill_in('q', :with => "Agile Manifesto")
  click_button("Buscar con Google")
end

Then /^I should see a link to "(.*?)"$/ do |url|
  page.should have_selector("a", :text => url)
end