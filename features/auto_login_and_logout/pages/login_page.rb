class LoginPage
  attr_accessor :loginTab, :txtUsername, :txtPassword, :btnLogin

  def initialize(browser)
    @browser = browser
    @login_tab = @browser.a(text: 'Sign in with Google')
    @txt_username = @browser.text_field(name: 'txtuid')
    @txt_password = @browser.text_field(name: 'txtpwd')
    @btn_sign_in = @browser.element(id: 'cmdlogin')
    @btn_register_official_login_out = @browser.element(id: 'cmdLogInOut')
    @btn_confirm = @browser.element(id: 'cmdConfirm')
  end

  def visit
    @browser.goto 'http://evolve.zigzagoffshoring.com/'
  end

  def click_login_tab
    @login_tab.click
  end

  def enter_username(username)
    @txt_username.set username
  end

  def enter_password(password)
    @txt_password.set password
  end

  def click_sign_in
    @btn_sign_in.click
  end

  def click_register_official_login_out
    @btn_register_official_login_out.click
  end

  def click_confirm
    @btn_confirm.click
  end

  def verify_home_page_header
    @browser.text_field(name: 'search').wait_until_present
  end
end
