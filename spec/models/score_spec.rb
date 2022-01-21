require 'rails_helper'

RSpec.describe Score, type: :model do
  describe '#by_screener' do
    it 'retrive all the screener\' scores' do
      screener = FactoryBot.create(:screener)
      FactoryBot.create_list(:score, 5, screener: screener)
      screener2 = FactoryBot.create(:screener)
      FactoryBot.create_list(:score, 2, screener: screener2)
      expect(Score.all.count).to eq 7      
      expect(Score.by_screener(screener).count).to eq 5      
    end

    it 'retrive empty if there are no scores for a screener' do
      screener = FactoryBot.create(:screener)
      FactoryBot.create_list(:score, 5, screener: screener)
      screener2 = FactoryBot.create(:screener)
      expect(Score.all.count).to eq 5      
      expect(Score.by_screener(screener2)).to be_empty
    end
  end

  
end
