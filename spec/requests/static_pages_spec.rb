require 'spec_helper'

 describe "Home page" do
  before { visit root_path }
  it "should have the content 'Sample App'" do
    expect(page).to have_content('Campus Connect')
  end

  it "should have the author's name" do
    expect(page).to have_content('Nishant')
 end
end

