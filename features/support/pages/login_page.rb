class Login < SitePrism::Page

  # Path
  set_url "/login"

  # Elements
  element :email_field, "input[id='user_email']"
  element :pass_field, "input[id='user_password']"

  element :signin_button, "input[name='commit']"
  element :signout_button, "a[href='/logout']"
  element :badge_name, "span[class='navbar-account-name']"

  def do
    email_field.set "pablomenezes@me.com"
    pass_field.set "123456"
    signin_button.click
  end

end
