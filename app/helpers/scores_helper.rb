module ScoresHelper

    def high_answers?(answers)
        !(answers - [0,1]).empty?
    end
end
