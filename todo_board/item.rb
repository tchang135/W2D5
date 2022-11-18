require "byebug"

class Item 
    def self.valid_date?(date_string)
        year = date_string[0..3]
        dash = date_string[4] + date_string[7]
        month = date_string[5..6]
        day = date_string[8..9]
        debugger
        return false if dash != '-' + '-'
        return false if !(0..31).include?(day.to_i)
        return false if !(0..12).include?(year.to_i)
    end 

    attr_reader :deadline 
    attr_accessor :title, :description

    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline
        @description = description
        raise 'there is an invalid date' if !Item.valid_date?(deadline)
    end 


    def deadline=(new_deadline)
        if Item.valid_date?(new_deadline)
            @deadline = new_deadline
        else  
            raise 'this is not a valid date'
        end 
    end 
end 