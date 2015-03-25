require 'rails_helper'

describe 'the create a user process' do
  it 'has a link on the homepage to create a new user' do
    visit root_path
    expect(page).to have_content "Create an account"
  end

  it 'renders the form' do
    visit root_path
    click_on "Create an account"
    expect(page).to have_content "Email"
  end

  it 'will create an account when filled in with properly formatted info' do
    visit root_path
    click_on "Create an account"
    fill_in "Email", :with => "clem@test.com"
    fill_in "Password", :with => "test"
    fill_in "Confirm Password", :with => "test"
    click_on "Create Account"
    expect(page).to have_content "Success"
  end
end
