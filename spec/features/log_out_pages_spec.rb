require 'rails_helper'

describe 'the log user process' do
  it 'displays the logout button when logged in' do
    FactoryGirl.create(:user)
    visit authenticated_root_path
    fill_in "Email", :with => "clem@test.com"
    fill_in "Password", :with => "testtest"
    click_on "Log in"
    expect(page).to have_content "Log out"
  end
end
