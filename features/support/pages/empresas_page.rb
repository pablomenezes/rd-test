class Empresas < SitePrism::Page

  # Path
  set_url '/empresas'

  # Elements for /empresas
  element :new_company, "a[id='insert_new_company_index']"
  element :company_search, "input[id='query']"
  element :arrow, "div[class='btn-group']"
  element :delete, :xpath, "//a[contains(text(),'Apagar')]"
  element :company, "a[class='clickable']"

  # Elements for /empresas/nova
  element :name_field, "input[id='inputNameCompany']"
  element :save_button, "input[id='submit_assync_button']"

  # Elements for /empresas/id
  element :company_name, "h2[id='company_name']"
end
