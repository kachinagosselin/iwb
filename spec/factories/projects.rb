# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    overview "MyText"
    subject_tag "MyString"
    city "MyString"
    country "MyString"
    continent "MyString"
    partner_organizations "MyString"
  end
end
