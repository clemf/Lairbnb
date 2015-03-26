require 'rails_helper'

describe 'the book a lair process' do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end

  it 'will show a book lair button when user does not own lair' do
    FactoryGirl.create(:lair, :user_id => user.id)
    visit lairs_path
    expect(page).to have_no_content 'Book'
  end

  it 'will not show a book lair button when user owns lair' do
    FactoryGirl.create(:lair, :user_id => 999999)
    visit lairs_path
    expect(page).to have_content 'Book'
  end
end
