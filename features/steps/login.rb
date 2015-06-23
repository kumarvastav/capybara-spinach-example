include Capybara::RSpecMatchers
include Capybara::RackTest

class Spinach::Features::Login < Spinach::FeatureSteps

  When 'I visit the page' do
    visit "https://mail.google.com"
  end

  And "I should be able to enter valid username" do
    fill_in("Email", with: "kumar.vastav")
    click_on "Next"
  end

  And "I should be able to enter valid password" do
    fill_in("Passwd", with: "Password")
  end

  And "I should be able to enter invalid username" do
    fill_in("Email", with: "vastav")
    click_on "Next"
  end

  And "I should be able to enter invalid password" do
    fill_in("Passwd", with: "test")
  end

  And "Click on the submit" do
    click_on "Sign in"
  end

  Then "I should see an error message" do
    text_val = find(:css,'.error-msg').text
    text_val.must_equal("The email and password you entered don't match.")
  end

  Then "I should see login page" do
    #Pending step
  end

end
