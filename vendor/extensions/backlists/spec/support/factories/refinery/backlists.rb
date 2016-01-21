
FactoryGirl.define do
  factory :backlist, :class => Refinery::Backlists::Backlist do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

