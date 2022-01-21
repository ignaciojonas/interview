class CheckIn < ApplicationRecord
  belongs_to :patient
  has_many :scores

  def score(screener)
    scores.by_screener(screener).last
  end
end
