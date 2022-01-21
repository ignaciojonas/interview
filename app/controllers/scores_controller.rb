class ScoresController < ApplicationController

    def new
        @screener = Screener.find(params['screener_id'])
    end
end
