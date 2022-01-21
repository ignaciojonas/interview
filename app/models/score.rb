class Score < ApplicationRecord
  belongs_to :check_in
  belongs_to :screener

  scope :by_screener, ->(screener) { where(screener: screener)}
end
