class Beginning

    def intro
        #ascii art title
        puts "Welcome to...".colorize(:color => :white, :background => :red)
        #calls title from title.rb
        puts title
        #blank string to make space between title and "welcome to"
        puts "\n"
        #GAME instructions
        puts "HOW TO PLAY:".colorize(:color => :white, :background => :red)
        puts Rainbow("
        Welcome to TRY NOT TO DIE ... This is a story based game in which YOU, yes you, choose your own fate. 
        Follow through the story and try to navigate to the end without dying!").lightcoral
        puts "\n 
        ***PLEASE NOTE: This game works best in full screen!".light_red
        puts "" #break between 
        puts "" #break between
        #asks user for name input
        puts "What should we call you?".magenta
        name = yourname(false, "")
        #asks user for pronoun input
        puts Rainbow("Ok, #{name}, and what is your preferred pronoun? *her/their/his?").cornflower
        pronoun = yourpronoun(false, "")
        #greeting
        puts typewriter("Alright, #{name}, nice to meet you! Let's get started!".magenta)
        puts "..."
        #beginning of the story
        #nightsky is ascii art for story beginning
        puts nightsky
        typewriter("\n
        It was a cold, dark night... 
        A brisk breeze cuts through #{name}'s woolen coat and sends a shiver down #{pronoun} back. 
        Following instructions scrawled across a ripped piece of paper, given to #{name} by a colleague, 
        #{name} walks down a seemingly quiet and unsuspecting street... 
        In the distance, a figure is seen, illuminated by the street lights behind them...")
        #divider
        puts Rainbow("------------------").lightcoral
        #tty-prompt choices to continue story
        prompt = TTY::Prompt.new
        option = prompt.select("*What would you like to do?") do |menu|
            menu.choice "escape down the manhole to your right?"
            menu.choice "run towards the figure?"
            menu.choice "cut through the park, it's dark but atleast it's not that weird figure"
            menu.choice "exit the game"
        #prompt select end
        end
        #prompt select directions
        if option == "escape down the manhole to your right?"
            puts Pt1ch1.text_pt1ch1(name, pronoun)
            Pt1ch1.text(name, pronoun)
        elsif option == "run towards the figure?"
            puts Pt1ch2.text_pt1ch2(name, pronoun)
            Pt1ch2.text(name, pronoun)
        elsif option == "cut through the park, it's dark but atleast it's not that weird figure"
            puts Pt1ch3.text_pt1ch3(name, pronoun)
            Pt1ch3.text(name, pronoun)
        elsif option == "exit the game"
            return
        else
        # if/elsif end      
        end
    #def intro end
    end
#class end
end