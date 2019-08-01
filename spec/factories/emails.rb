FactoryBot.define do
  factory :newsletter do
    sequence(:subject) { |n| "Subject #{n}" }
    segment_recipient  UserSegments::SEGMENTS.sample
    sequence(:from)    { |n| "noreply#{n}@consul.dev" }
    sequence(:body)    { |n| "Body #{n}" }
    sequence(:footer)  { |n| "Footer #{n}" }
  end
end
