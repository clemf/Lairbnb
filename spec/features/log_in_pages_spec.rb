require 'rails_helper'

describe 'the log in user process' do
  it 'displays the login form on the homepage' do
    visit unauthenticated_root_path
    expect(page).to have_content "Log in"
  end

  it 'logs in the user when the form is completed' do
    FactoryGirl.create(:user)
    visit unauthenticated_root_path
    fill_in "Email", :with => "clem@test.com"
    fill_in "Password", :with => "testtest"
    click_on "Log in"
    expect(page).to have_content "success"
  end


end
