require "item.rb"

class List 
    attr_accessor :list
    def initialize(label)
        @label = list 
        @items = []
    end 


    def add_item(title, deadline, description)
        description = '' if description.nil?
       if Item.valid_date?(deadline)
          @items << Item.new(title, deadline, description)
          return true 
       else 
          return false 
       end 
    end 
end     