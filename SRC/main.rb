require_relative 'list'
require_relative 'story.rb'
require_relative 'anim.rb'
require_relative 'asciitext'

class Beginning

    def intro
        #ascii art title
        puts "Welcome to...".colorize(:color => :white, :background => :red)
        #calls title from title.rb
        puts title
        #game instructions
        puts "HOW TO PLAY:".colorize(:color => :white, :background => :red)
        puts Rainbow("Welcome to TRY NOT TO DIE ... This is a story based game in which YOU, yes you, choose your own fate. 
        Follow through the story and try to navigate to the end without dying! Please note that this game works best in full screen! ").lightcoral
        puts " .... ".red
        #asks user for name input
        puts "What should we call you?".magenta
        name = yourname
        #asks user for pronoun input
        puts Rainbow("Ok, and what is your preferred pronoun? *Her/Their/His?").cornflower
        pronoun = yourpronoun
        #greeting
        puts "Alright, #{name}, nice to meet you! Let's get started!".magenta
        puts "..."
        #beginning of the story
        anim("It was a cold, dark night... 
        A brisk breeze cuts through #{name}'s woolen coat and sends a shiver down #{pronoun} back. 
        Following instructions scrawled across a ripped piece of paper, given to #{pronoun} by a colleague, #{name} walks down a seemingly quiet and unsuspecting street... 
        In the distance, a figure is seen, illuminated by the street lights behind them...")
        #divider
        puts Rainbow("------------------").lightcoral
        #tty-prompt choices to continue story
        prompt = TTY::Prompt.new
        option = prompt.select("*What would you like to do?") do |menu|
            menu.choice "escape down the manhole to your right?"
            menu.choice "run towards the figure?"
            menu.choice "cut through the park, it's dark but atleast it's not that weird figure"
            menu.choice "EXIT"
        #prompt select end
        end
        #
        if option == "escape down the manhole to your right?"
            puts Pt1ch1.text(name, pronoun)
        elsif option == "run towards the figure?"
            puts Pt1ch2.text(name, pronoun)
        elsif option == "cut through the park, it's dark but atleast it's not that weird figure"
            puts Pt1ch3.text(name, pronoun)
        elsif option == "EXIT"
            puts "no"
        else
        # if/elsif end      
        end
    #def intro end
    end

#user input for name
def yourname
    return gets.chomp
#def yourname end
end

#user input for pronoun
def yourpronoun
    gets.chomp
#def pronoun end
end

#class end
end


beginning = Beginning.new
beginning.intro









