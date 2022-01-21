class ScoresController < ApplicationController

    def new
        @screener = Screener.find(params['screener_id'])
    end

    def create
        @screener = Screener.find(params['screener_id'])
        @check_in = CheckIn.find(params['check_in_id'])
        answers = @screener.options.map {|op| params["option_#{op.id}"].to_i}
        Score.create(screener: @screener, check_in: @check_in, score: answers.sum) 
        redirect_to check_in_url(@check_in)
    end
end
