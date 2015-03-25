FactoryGirl.define do
  factory(:user) do
    email('clem@test.com')
    password('testtest')
  end
end
