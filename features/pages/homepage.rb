
class Homepage < Spinach::FeatureSteps

  def usr_enterKeyword(keyword)
    fill_in("q", with: keyword)
  end

  def usr_clickLink(btn_name)
    click_on btn_name
  end

end