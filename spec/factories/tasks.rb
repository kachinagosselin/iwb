# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    title "MyString"
    summary "MyString"
    skill "MyString"
    active false
  end
end
