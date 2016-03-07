# Read about factories at https://github.com/thoughtbot/factory_girl

# FactoryGirl.define do
#   factory :user do
#     name "MyString"
#     email "MyString"
#   end
# end


FactoryGirl.define do 
  # factory :user do
  #   sequence(:name)  { |n| "Person #{n}" }
  #   sequence(:email) { |n| "person_#{n}@example.com"}
  #   password "foobar"
  #   password_confirmation "foobar"

  #   factory :admin do
  #     admin true
  #   end
  # end
  factory :lawn do
    width 5
    height 5
  end
  #user.current_account_id = account.id

  factory :mower_1 do
    x 1
  	y 2
  	headings "N"
    commands "LMLMLMLMM"
  	lawn
  end
  factory :mower_2 do
    x 3
    y 3
    headings "E"
    commands "MMRMMRMRRM"
    lawn
  end
end