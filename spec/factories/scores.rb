FactoryBot.define do
  factory :score do
    check_in { CheckIn.first || FactoryBot.create(:check_in) }
    screener { Screener.first || FactoryBot.create(:screener) }
    score { 0 }
  end
end
