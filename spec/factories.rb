FactoryGirl.define do
  factory :user do
    first_name "Duder"
    last_name "McDude"
  end

  factory :address do
    sequence(:street) {|n| "#{n} Street"}
    city 'Bend'
    state 'OR'
    zip '97702'
  end

end