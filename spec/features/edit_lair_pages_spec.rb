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

  it "will go to the lair edit page if you click on the link" do
    lair = FactoryGirl.create(:lair, :user_id => user.id)
    visit lairs_path
    click_on "Edit"
    expect(page).to have_content "Doomsday devices"
  end

  it "will update the entry correclty" do
    lair = FactoryGirl.create(:lair, :user_id => user.id)
    visit lairs_path
    click_on "Edit"
    fill_in "Name", :with => "Clem's cuddle puddle"
    click_on "Update Lair"
    expect(page).to have_content "Clem's cuddle puddle"
  end

  it "will display the delete lair button if the user owns the lair" do
    lair = FactoryGirl.create(:lair, :user_id => user.id)
    visit lairs_path
    expect(page).to have_content "Delete"
  end

  it "won\'t display the delete lair button if the user does not own the lair" do
    lair = FactoryGirl.create(:lair, :user_id => 999999)
    visit lairs_path
    expect(page).to have_no_content "Delete"
  end

  it "will update the entry correclty" do
    lair = FactoryGirl.create(:lair, :user_id => user.id)
    visit lairs_path
    click_on "Delete"
    expect(page).to have_no_content "Test lair"
  end

end
