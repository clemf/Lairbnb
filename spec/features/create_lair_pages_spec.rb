require 'rails_helper'


describe 'the create a new lair process' do
  let(:user) { FactoryGirl.create(:user)}

  before do
    sign_in(user)
  end

  it 'displays the new lair form on the lairs#index page' do
    visit lairs_path
    expect(page).to have_content "Doomsday devices"


  end



end
