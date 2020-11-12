require_relative 'menu.rb'

default_menu_hash ={ 
    message: "Please Select an option",
    options: ['option 1', 'option 2', 'exit']
}
menu2 ={
    message: "Welcome to the Casino select a game",
    options: ['Craps', 'Poker', 'High/Low', 'exit']
}

menu_test = Menu.new(default_menu_hash)
menu_test.print

casino_menu = Menu.new(menu2)
casino_menu.print
# please select an option
# 1) option 1
# 2) option 2
# 3) exit


# generally have a message Please select an option/please choose 
# list of options
# user selecting one of those

#i want to list a menu using my class


# what kind of data structure does that look like??
# a hash since it will have an option and a message



# menu1 ={
#     message: "Please Select an option" 
#     options: ['add contact', 'update contact', 'list contact', 'exit']
# }

