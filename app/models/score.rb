class Score < ApplicationRecord
  belongs_to :check_in
  belongs_to :screener
end
