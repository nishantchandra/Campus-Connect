require 'spec_helper'

 describe "Home page" do
  it "should have the content 'Sample App'" do
    visit '/static_pages/home'
    expect(page).to have_content('Campus Connect')
  end

  it "should have the author's name" do
    visit '/static_pages/home'
    expect(page).to have_content('Nishant')
 end
end

