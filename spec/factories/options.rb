FactoryBot.define do
  factory :option do
    name { "Little interest or pleasure in doing things" }
    answers { { 'Not at all': 0, 'Several days': 1, 'More than half the days': 2, 'Nearly every day': 3  } }
    screener { Screener.first || FactoryBot.create(:screener) }
  end
end
