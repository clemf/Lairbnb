FactoryGirl.define do

  factory(:user) do
    email('clem@test.com')
    password('testtest')
  end

  factory(:lair) do
    name('Test Lair')
    lair_type('Underwater dome')
    doomsday_devices('Nuclear arsenal')
    price('$1000')
    user_id(1)
  end
end
