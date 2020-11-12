class Menu
    def initialize(menu)
        @menu = menu
    end

    #define print method
    def print
        # this @menu looks like
        # {:message=>"Please Select an option", :options=>["option 1", "option 2", "exit"]}

        #display menu message
        puts @menu[:message]
        puts "-------------"

        #loop over menu options, need to add logic to add 1) as well
        @menu[:options].each_with_index do |item, index|
            puts "#{index+1}). #{item}"
        end
        puts " "
    end
end
