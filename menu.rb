require 'colorize'
class Menu
    def initialize(menu)
        @menu = menu
        @color_scheme = {color: :light_cyan, background: :default}
    end

    #define print method
    def print
        # this @menu looks like
        # {:message=>"Please Select an option", :options=>["option 1", "option 2", "exit"]}

        #display menu message
        ## replaces chars and spaces with *
        border = @menu[:message].gsub(/\s|\S/, '*')
        puts border.colorize(@color_scheme)
        puts @menu[:message].colorize(@color_scheme)
        puts border.colorize(@color_scheme)

        #loop over menu options, need to add logic to add 1) as well
        @menu[:options].each_with_index do |item, index|
            puts "#{index+1}). #{item}"
        end
    end

    #get user input and retur the number in the list , do some error checking
    def get_selection
        puts "Select a value"
        # get input from user convert to int
        input = gets.strip
        # if input is not a valid integer it will go to rescue
        selection = Integer(input)

        # check if input is int, maybe check is it a valid int ie if we have four options in 
        # menu the value should be 1,2,3,4
        if selection >= 1 && selection <= @menu[:options].size
            selection
        else
            puts "#{selection} needs to be in bewtween 1 and #{@menu[:options].size}, please try again"
            self.get_selection
        end

        # if selection < 1 || selection > @menu[:options].size
        #     puts "#{selection} needs to be in between 1 and #{@menu[:options].size}"
        #     self.get_selection
        # end

        # loop until user enters valid number

        #return valid input
        rescue ArgumentError
            # if an argument error occurs above the Ruby will come here instead of throwing the error
            puts "#{input} is not a integer please select an integer"
            self.get_selection
        
        
    end
end
