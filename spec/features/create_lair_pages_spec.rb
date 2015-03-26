require 'rails_helper'


describe 'the create a new lair process' do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end

  it 'displays the new lair form on the lairs#index page' do
    visit lairs_path
    expect(page).to have_content "Doomsday devices"
  end

  it 'creates a new lair when form is filled out' do
    visit lairs_path
    fill_in 'Name', with: "Test Lair"
    fill_in 'Price', with: "5,000 gold doubloons"
    fill_in 'Doomsday devices', with: "10 Gigawatt Deathray"
    fill_in 'Lair type', with: "Underwater dome"
    click_on "Create Lair"
    expect(page).to have_content "Lair listed"
  end


end
