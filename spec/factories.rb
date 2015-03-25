FactoryGirl.define do  factory :lair do
    
  end

  factory(:user) do
    email('clem@test.com')
    password('testtest')
  end
end
