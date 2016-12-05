class Leads < SitePrism::Page

  # Path
  set_url "/leads"

  # Elements for /leads
  element :search_field, "input[id='query']"
  element :suggestions, "span[class='tt-suggestions']"
  element :companies_link, "a[href='/empresas']"
  element :new_manual_lead, "a[href='/leads/novo']"
  element :lead, "a[class='edit-info-link']"

  # Elements for /leads/id
  element :name, "h2[id='lead-name']"
  element :edit_button, :xpath, "//a[contains(text(),'Editar')]"
  element :company_title, "h3[id='company_tab_name']"
  element :arrow, "button[class='btn btn-default dropdown-toggle']"
  element :delete_lead, "a[class='exclude-lead-link']"

  # Element for /leads/id/editar
  element :edit_name, "input[id='inputName']"
  element :save_button, "input[name='commit']"
  element :company_tab, "a[href='#edit_company']"
  element :link_company, "a[href='#change_company']"
  element :company_search, "input[id='change-company-query']"
  element :company_suggestions, "span[class='tt-dropdown-menu']"
  element :save_link, "button[id='change_company_button']"

  # Element for /leads/novo
  element :new_name, "input[id='lead_name']"
  element :new_email, "input[id='lead_email']"

end
