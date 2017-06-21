Given(/^I launch http:\/\/evolve\.zigzagoffshoring\.com\/staff\/$/) do
  @LoginPage = LoginPage.new(@browser)
  @LoginPage.visit
end


And(/^I enter username$/) do
  @LoginPage.enter_username(@username)
end

And(/^I enter password$/) do
  @LoginPage.enter_password(@password)
end

And(/^I click Sign In$/) do
  @LoginPage.click_sign_in
end

And(/^I click Register Official Login Out$/) do
  @LoginPage.click_register_official_login_out
end

Then(/^I click Confirm$/) do
  @LoginPage.click_confirm
end
