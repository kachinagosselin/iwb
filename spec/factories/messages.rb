# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    to_user_id "MyString"
    from_user_id "MyString"
    title "MyString"
    content "MyText"
    user_id 1
    sent false
    thread_count 1
    folder "MyString"
    parent_id 1
    read false
    name "MyString"
  end
end
