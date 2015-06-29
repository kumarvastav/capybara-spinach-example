
class Spinach::Features::Search < Spinach::FeatureSteps

  When "I visit the page" do
    @homepage = Homepage.new
    @homepage.usr_launchApp "https://google.com"
    # visit "https://google.com"
  end

  And "I enter the search keyword" do
    @homepage = Homepage.new
    @homepage.usr_enterKeyword 'Test with Capybara'
  end

  And "Click on search button" do
    @homepage = Homepage.new
    @homepage.usr_clickLink "Search"  #"btnG"
  end

  Then "I should see search results page" do
    find(:css,"#resultStats").equal?(:visible)
  end

end