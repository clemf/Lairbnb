require 'rails_helper'

describe 'the log in user process' do
  it 'displays the login form on the homepage' do
    visit root_path
    expect(page).to have_content "Sign In"
  end

  it 'logs in the user when the form is completed' do
    FactoryGirl.create(:user)
    visit root_path
    fill_in "Email", :with => "clem@test.com"
    fill_in "Password", :with => "testtest"
    click_on "Sign In"
    expect(page).to have_content "success"
  end


end
