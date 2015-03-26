require 'rails_helper'

describe Booking do
  it { should belong_to :user }
  it { should belong_to :lair }
end
