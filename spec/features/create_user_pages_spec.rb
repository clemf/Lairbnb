require 'rails_helper'

describe 'the create a user process' do
  it 'has a link on the homepage to create a new user' do
    visit unauthenticated_root_path
    expect(page).to have_content "Sign up"
  end

  it 'renders the form' do
    visit unauthenticated_root_path
    click_on "Sign up"
    expect(page).to have_content "Email"
  end

  it 'will Sign up when filled in with properly formatted info' do
    visit unauthenticated_root_path
    click_on "Sign up"
    fill_in "Email", :with => "clem@test.com"
    fill_in "Password", :with => "testtest"
    fill_in "Password confirmation", :with => "testtest"
    click_on "Sign up"
    expect(page).to have_content "successfully"
  end

  it 'will be angry if you try to recreate an already existing account' do
    user = FactoryGirl.create(:user)
    visit unauthenticated_root_path
    click_on "Sign up"
    fill_in "Email", :with => "clem@test.com"
    fill_in "Password", :with => "testtest"
    fill_in "Password confirmation", :with => "testtest"
    click_on "Sign up"
    expect(page).to have_content "error"
  end
end
