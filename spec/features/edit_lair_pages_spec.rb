require 'rails_helper'

describe "the edit lair process" do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end

  it 'shows an edit lair button if user owns the lair' do
    lair = FactoryGirl.create(:lair, :user_id => user.id)
    visit lairs_path
    expect(page).to have_content "Edit"
  end

  it 'wont show an edit lair button if user doesnt own the lair' do
    lair = FactoryGirl.create(:lair, :user_id => 999999)
    visit lairs_path
    expect(page).to have_no_content "Edit"
  end



end
