Given(/^I am on the leads page$/) do
  @app.leads.load
end

Given(/^I search for lead "([^"]*)"$/) do |lead|
  @app.leads.search_field.set lead
end

When(/^press Enter$/) do
  @app.leads.search_field.native.send_keys :return
end

Then(/^I should see "([^"]*)" in the list$/) do |lead|
  expect(page).to have_content lead
end

Given(/^I click on "([^"]*)" lead$/) do |lead|
  @app.leads.lead.click
end

Given(/^I click in "([^"]*)" on the suggestion below$/) do |suggestion|
  @app.leads.suggestions.click
end

Then(/^I should see the "([^"]*)" page$/) do |lead|
  expect(@app.leads.name.text).to be_eql lead
end

Given(/^I am on the searchable lead page$/) do
end

Given(/^I click on Edit button$/) do
  @app.leads.edit_button.click
end

Given(/^change the lead name to "([^"]*)"$/) do |lead|
  @app.leads.edit_name.set lead
end

Given(/^I click at Salvar button$/) do
  @app.leads.save_button.click
end

Then(/^I should see the message "([^"]*)"$/) do |arg1|
  puts @app.leads.company_title.text
end

Then(/^the name of the lead should be "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click on Empresas link$/) do
  @app.leads.companies_link.click
end

Given(/^I click on Inserir Empresa button$/) do
  @app.empresas.new_company.click
end

Given(/^fill the field name with "([^"]*)"$/) do |company|
  @app.empresas.name_field.set company
end

Given(/^I click on Salvar button$/) do
  @app.empresas.save_button.click
end

Then(/^the name of the company should be "([^"]*)"$/) do |company|
  expect(@app.empresas.company_name.text).to be_eql company
end

Given(/^click on Vincular empresa button$/) do
  @app.leads.link_company.click
end

Given(/^click on Empresa tab$/) do
  @app.leads.company_tab.click
end

Given(/^fill the search box with "([^"]*)"$/) do |company|
  @app.leads.company_search.native.send_keys company
  sleep(5)
  @app.leads.company_search.click
  @app.leads.company_search.click
  @app.leads.company_search.click #smelly code :/
end

When(/^I click in "([^"]*)" on the companies suggestion bellow$/) do |arg1|
  @app.leads.company_suggestions.click
end

When(/^I click on Vincular button$/) do
  @app.leads.save_link.click
end

When(/^click on "([^"]*)" button$/) do |arg1|
  puts @app.leads.company_title.text
end

Then(/^I should see the "([^"]*)" name on title$/) do |company|
  expect(@app.leads.company_title.text).to be_eql company
end

Given(/^I click in "([^"]*)" company$/) do |arg1|
  @app.empresas.company.click
end

Given(/^I search for "([^"]*)" company$/) do |company|
  @app.empresas.company_search.set company
  sleep(5)
  @app.empresas.company_search.click
  @app.empresas.company_search.click
  @app.empresas.company_search.click #smelly code
end

Given(/^click on the arrow$/) do
  @app.empresas.arrow.click
end

When(/^I click on Apagar button$/) do
  @app.empresas.delete.click
end

When(/^select OK$/) do
  page.driver.browser.switch_to.alert.accept
end

Then(/^I should not see the company on the list$/) do
  expect(page).to have_no_content("Automated Company")
end

Given(/^I click on the arrow menu$/) do
  @app.leads.arrow.click
end

Given(/^I click on Apagar lead link$/) do
  @app.leads.delete_lead.click
end

Then(/^I should not see the lead on the list$/) do
  expect(page).to have_no_content("Edited Lead")
end
