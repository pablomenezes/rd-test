Before do
  @app = App.new

  if !@app.login.has_badge_name?
    @app.login.load
    @app.login.do
    @app.leads.load
    @app.leads.new_manual_lead.click
    @app.leads.new_name.set "Pablo Menezes"
    @app.leads.new_email.set "pablo@menezes.com"
    @app.leads.save_button.click
  end

end
