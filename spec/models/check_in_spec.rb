require 'rails_helper'

RSpec.describe CheckIn, type: :model do
  it { should belong_to :patient }

  describe '#score' do
    it 'retrive the last score for a screener' do
      chech_in = FactoryBot.create(:check_in)
      screener = FactoryBot.create(:screener)
      FactoryBot.create_list(:score, 5, score: 10)
      score = FactoryBot.create(:score, score: 15)
      expect(chech_in.score(screener)).to eq score      
    end

    it 'retrive the nil if no score for screener' do
      chech_in = FactoryBot.create(:check_in)
      screener = FactoryBot.create(:screener)
      expect(chech_in.score(screener)).to eq nil      
    end

  end
end
