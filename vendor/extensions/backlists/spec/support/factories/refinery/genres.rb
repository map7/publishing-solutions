
FactoryGirl.define do
  factory :genre, :class => Refinery::Backlists::Genre do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

