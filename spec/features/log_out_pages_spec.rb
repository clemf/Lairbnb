require 'rails_helper'

describe 'the log out a user process' do
  it 'doesn\'t display the logout button when not logged in' do
    FactoryGirl.create(:user)
    visit unauthenticated_root_path
    expect(page).to have_no_content "Log out"
  end

  it 'displays the logout button when logged in' do
    FactoryGirl.create(:user)
    visit unauthenticated_root_path
    fill_in "Email", :with => "clem@test.com"
    fill_in "Password", :with => "testtest"
    click_on "Log in"
    expect(page).to have_content "Log out"
  end

  it 'logs out a user when the button is pressed' do
    FactoryGirl.create(:user)
    visit unauthenticated_root_path
    fill_in "Email", :with => "clem@test.com"
    fill_in "Password", :with => "testtest"
    click_on "Log in"
    click_on "Log out"
    expect(page).to have_content "Log in"
  end
end
