require 'rails_helper'

RSpec.describe ScoresHelper, type: :helper do
  describe '#high_answers?' do
    it 'is true if there is any 2 or 3 answer' do
      expect(helper.high_answers?([0,2,1,1,0])).to be true
      expect(helper.high_answers?([0,3,3,0,0])).to be true
      expect(helper.high_answers?([1,2,3,1,0])).to be true
    end

    it 'is false if there is  no 2 or 3 answer' do
      expect(helper.high_answers?([0,1,1,1,0])).to be false
      expect(helper.high_answers?([0,0,0,0,0])).to be false
      expect(helper.high_answers?([1,1,1,1,1])).to be false
    end

  end

  
end
