require_relative 'list.rb'
require_relative 'anim'
require_relative 'asciitext'

#this module presents when "start over" is selected
module Startover

    def self.text_startover(name, pronoun)
        puts nightsky #calling ascii art from ascii textfile
        #typewriter used to make text type out
        puts typewriter("\n 
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
        else option == "exit the game"
            return
        # if/elsif end      
        end
    end
end

# this module presents when the user selects "escape down the manhole to your right?"
module Pt1ch1
    
    
    def self.text_pt1ch1(name, pronoun)
        puts falling #calling ascii art from ascii textfile
        return typewriter("\n
            #{name} pulls the lid off the manhole and fumbles for the ladder, 
            the brisk air has made #{name}'s hands cold and they fail to get a good grip, 
            slipping and falling for what seems like hours... 
            then the cold harsh slam of #{name}'s body echoes through the quiet streets above. 
            #{name} HAS DIED.")
    end

    def self.text(name, pronoun)
        #divider
        puts Rainbow("-------------------------").lightcoral
        # ascii art image appears when death results
        puts death
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "start over"
            menu.choice "exit the game"
        end
        if option == "start over"
            puts Startover.text_startover(name, pronoun)
        else option == "exit the game"
            return
        end

    end
end

# this module presents when the user selects "run towards the figure?"
module Pt1ch2

    def self.text_pt1ch2(name, pronoun)
        puts run #calling ascii art from ascii textfile
        return typewriter("\n
        #{name} has never been one to back down, picking up the pace they run directly towards the figure, 
        the air bites at #{pronoun} cheeks but it doesn't slow them down. 
        The figure stops and watches as #{name} gets closer, hauntingly un-moved by #{name} running toward them... 
        As #{name} makes it within a few meters of the figure, #{name} can now see that it is an old man... 
        the deep wrinkles in his face make him look like a broken porclain doll. 
        #{name} stops in front of him, waiting for something... anything... 
        The man clears his throat and asks whether #{name} can show him the way to his house nearby, 
        #{name} looks down at the piece of paper in #{pronoun} hand... 
        it's the same street name that the man has asked to go to... ")
    end

    def self.text(name, pronoun)
        #divider
        puts Rainbow("-------------------------").lightcoral
        prompt = TTY::Prompt.new
        option = prompt.select("*What would you like to do?") do |menu|
            menu.choice "tell the man you'd be happy to let him tag along on your journey"
            menu.choice "say nothing and keep going on your way?"
            menu.choice "politely decline... this guy is creepy"
            menu.choice "exit the game"   
        end
        if option == "tell the man you'd be happy to let him tag along on your journey"
            puts Pt2ch21.text_pt2ch21(name, pronoun)
            Pt2ch21.text(name, pronoun)
        elsif option == "say nothing and keep going on your way?"
            puts Pt2ch22.text_pt2ch22(name, pronoun)
            Pt2ch22.text(name, pronoun)
        elsif option == "politely decline... this guy is creepy"
            puts Pt2ch23.text_pt2ch23(name, pronoun)
            Pt2ch23.text(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end



# this module presents when the user selects "cut through the park, it's dark but atleast it's not that weird figure"
module Pt1ch3

    def self.text_pt1ch3(name, pronoun)
        puts park #calling ascii art from ascii textfile
        return typewriter("\n
            Looking around,  #{name} see's a park to #{pronoun} left, 
            it's dark and the trees seem almost alive, but it seems better then the unknown at the end of the street.
            #{name} runs into the park and down the cobblestone pathway... 
            the park is quiet except for the rustle of the trees, and the odd hoot of an owl... 
            The path leads through the park and comes out on the very street #{name} is looking for. 
            There are a number of derelict houses on the left and a warehouse on the right... 
            the street lights don't seem to have been serviced in years... 
            it's very dark so making out the street numbers is proving difficult... 
            a flashlight would be really handy right now... ")
    end

    def self.text(name,pronoun)
        puts Rainbow("-------------------------").lightcoral
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "blindly walk through the street, hoping to find what your looking for?"
            menu.choice "there was a dirty old bag back in the park, maybe it had a flash light? go check?"
            menu.choice "check the warehouse, maybe someone is working late?"
            menu.choice "exit the game"
        end
        if option == "blindly walk through the street, hoping to find what your looking for?"
            puts Pt3ch31.text_pt3ch31(name, pronoun)
            Pt3ch31.text(name, pronoun)
        elsif option == "there was a dirty old bag back in the park, maybe it had a flash light? go check?"
            puts Pt3ch32.text_pt3ch32(name, pronoun)
            Pt3ch32.text(name, pronoun)
        elsif option == "check the warehouse, maybe someone is working late?"
            puts Pt3ch33.text_pt3ch33(name, pronoun)
            Pt3ch33.text(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

# this module presents when the user selects "tell the man you'd be happy to let him tag along on your journey"
module Pt2ch21
    
    def self.text_pt2ch21(name, pronoun)
        puts forkedroad #calling ascii art from ascii textfile
        return typewriter("\n
        #{name} smiles at the old man, gesturing to #{pronoun} paper, and says 'Of course, I'm going the same way'. 
        The old man smiles back at #{name}. Walking down the street the man tells #{name} vague stories from his life as #{name} listens intently, 
        the time seems to pass quicker now that #{name} has company and the brisk air doesn't feel as cold anymore... 
        Soon there comes a fork in the road, looking down at the piece of paper #{name} looks puzzled. 
        The man says he thinks it's the road to the left, but mentions his memory is not what it used to be... ")
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "follow the mans instructions, even if he does seem unsure?"
            menu.choice "go the other way?"
            menu.choice "exit the game"
        end
        if option == "follow the mans instructions, even if he does seem unsure?"
            puts Pt4ch41.text_pt4ch41(name, pronoun)
            Pt4ch41.text(name, pronoun)
        elsif option == "go the other way?"
            puts Pt4ch42.text_pt4ch42(name, pronoun)
            Pt4ch42.text(name, pronoun)
        else option == "exit the game"
           return
        end
    end
end

# this module presents when the user selects "say nothing and keep going on your way?"
module Pt2ch22
    
    def self.text_pt2ch22(name, pronoun)
        puts car #calling ascii art from ascii textfile
        return typewriter("\n
            The man watches you walk away, a sad look in his eyes. 
            #{name} turns away and continues down the street... 
            out of nowhere a car appears and slams into #{name}. 
            Thrown far from the road #{name} hits #{pronoun} head on the edge of a cement garden bed. 
            #{name} HAS DIED.")
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
         # ascii art image appears when death results
        puts death
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "start over"
            menu.choice "exit the game"
        end
        if option == "start over"
            puts Startover.text_startover(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

# this module presents when the user selects "politely decline... this guy is creepy"
module Pt2ch23
    
    def self.text_pt2ch23(name, pronoun)
        puts dog #calling ascii art from ascii textfile
        return typewriter("\n
        The man nods, shoulders slumping, he walks wearily down the street towards the park. 
        #{name} shrugs off the interaction and looks around... 
        #{name} notices a small side street, and hoping to find a short cut, walks towards it. 
        As #{name} enters the side street a pack of rabid dogs come bolting down from the other end, catching #{name} by surprise, they trip backwards and are mauled. 
        #{name} HAS DIED.")
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
        # ascii art image appears when death results
        puts death
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "start over"
            menu.choice "exit the game"
        end
        if option == "start over"
            puts Startover.text_startover(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

# this module presents when the user selects "blindly walk through the street, hoping to find what your looking for?
module Pt3ch31
    
    def self.text_pt3ch31(name, pronoun)
        puts falling #calling ascii art from ascii textfile
        return typewriter("\n
        #{name} fumbles down the street, blindly looking for a letter box or something to help find the place they search for. 
        Instead, #{pronoun} foot slips and #{name} falls down an open manhole in the road...  
        #{name} HAS DIED. ")
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
         # ascii art image appears when death results
        puts death
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "start over"
            menu.choice "exit the game"
        end
        if option == "start over"
            puts Startover.text_startover(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

#this module presents when the user selects "there was a dirty old bag back in the park, maybe it had a flash light? go check?"
module Pt3ch32

    def self.text_pt3ch32(name, pronoun)
        puts park #calling ascii art from ascii textfile
        return typewriter("\n
        #{name} remembers seeing an old tattered bag back in the park, it's a long shot but perhaps there is a flashlight in there. 
        #{name} runs back to check the bag, almost running directly into an old man ... 
        He startles, looking up.. then, like he read their mind, he pulls a flash light from his coat pocket. 
        #{name} smiles at him, and asks if he would be so kind as to guide #{pronoun} back down the dark street. 
        He accepts and passes the flashlight to #{name}. 
        Arriving back in the street, #{name} shines the flashlight down the street as they walk along, narrowly avoiding a large manhole in the street. 
        'That could have been dangerous' says the old man as #{name} nods in agreement. 
        Eventually the man points at a house, signalling it's his stop... 
        #{name} graciously waits for him to go inside, he says to keep the flashlight, #{name} thanks him again as he disappears behind the door. ")
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "use the flashlight to find the address on the piece of paper?"
            menu.choice "go back and ask the old man for a glass of water, walking is thirsty work"
            menu.choice "exit the game"
        end
        if option == "use the flashlight to find the address on the piece of paper?"
            puts Pt5ch51.text_pt5ch51(name, pronoun)
            Pt5ch51.text(name, pronoun)
        elsif option == "go back and ask the old man for a glass of water, walking is thirsty work"
            puts Pt5ch52.text_pt5ch52(name, pronoun)
            Pt5ch52.text(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

#this module presents when the user selects "check the warehouse, maybe someone is working late?"
module Pt3ch33

    def self.text_pt3ch33(name, pronoun)
        puts warehouse # calling ascii art from ascii textfile
        return typewriter("\n
        #{name} walks carefully towards the warehouse, trying to make small steps incase of any rogue man holes that may be lurking... 
        #{name} inches closer and closer to the warehouse, arms out in front of #{pronoun} awkwardly pawing at the air. 
        Making out the silouhette of the warehouse #{name} estimates it must be about 100 meters away at this point... 
        Almost at the warehouse, #{name} is pulled back as something catches the sleeve of #{pronoun} coat and yanks them back, 
        they fall and desperately pull at their sleeve to try to release the coat from whatever it is caught on... 
        One final pull and something rumbles, the coat was caught on a metal screw of a rickety old water tank, 
        the final yank causes it to topple over and crush #{name}. 
        #{name} HAS DIED. ")
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
        puts death
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "start over"
            menu.choice "exit the game"
        end
        if option == "start over"
            puts Startover.text_startover(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

#this module presents when the user selects "follow the mans instructions, even if he does seem unsure?"
module Pt4ch41

    def self.text_pt4ch41(name, pronoun)
        puts falling #calling ascii art from ascii textfile
        return typewriter("\n
        #{name} decides the man probably knows what he is talking about, and follows the left street. 
        The man hobbles along beside #{name}, still remeniscing about his life, 
        the road winds down for what feels like a long time...
        #{name} asks the man if he notices anything familiar around the area but the man appears not to hear them and continues with his story... 
        not wanting to be rude #{name} continues to listen to the man as they walk straight off the edge of a cliff. 
        #{name} HAS DIED. ")
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
        puts death
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "start over"
            menu.choice "exit the game"
        end
        if option == "start over"
            puts Startover.text_startover(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

#this module presents when the user selects "go the other way?"
module Pt4ch42

    def self.text_pt4ch42(name, pronoun)
        puts house #calling ascii art from ascii textfile
        return typewriter("\n
        #{name} decides not to listen to the man and kindly guides him down the street to the right. 
        It's quite dark but as they continue down the street, the old man pulls out a flashlight, 
        handing it to #{name}. Shining the light around #{name} wonders whether this was the right choice of street, 
        but the thought is cut off as the old man signals with a pointed finger, 'That's my house!'. 
        #{name} smiles and walks the man to his front garden, offering back the flashlight. He smiles and pushes it back toward #{name}, 
        'You need it more then me!' he chuckles as he heads into the house. ")
            
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "use the flashlight to find the address on the piece of paper?"
            menu.choice "go back and ask the old man for a glass of water, walking is thirsty work"
            menu.choice "exit the game"
        end
        if option == "use the flashlight to find the address on the piece of paper?"
            puts Pt5ch51.text_pt5ch51(name, pronoun)
            Pt5ch51.text(name, pronoun)
        elsif option == "go back and ask the old man for a glass of water, walking is thirsty work"
            puts Pt5ch52.text_pt5ch52(name, pronoun)
            Pt5ch52.text(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

# this module presents when the user selects "use the flashlight to find the address on the piece of paper?"
module Pt5ch51

    def self.text_pt5ch51(name, pronoun)
        puts falling #calling ascii art from ascii textfile
        return typewriter("\n
        Using the flashlight, #{name} peers down at the piece of paper. 
        Looking up to around the mans house number, #{name} moves slowly backwards, shining the flashlight around to try to find it. 
        There doesn't appear to be one, so #{name} moves onto the next house. 
        Like some sort of sick joke it appears that none of the houses have visible numbers... 
        the flashlight starts to flicker, and then goes out. #{name} slaps the light against their palm, 
        unable to get it working #{name} tucks it in their coat pocket. 
        As they gingerly make their next step air suddenly flows from beneath them... another manhole!!??! 
        #{name} HAS DIED. ")
    end

    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
         # ascii art image appears when death results
        puts death
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "start over"
            menu.choice "exit the game"
        end
        if option == "start over"
            puts Startover.text_startover(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end

#this module presents when the user selects "go back and ask the old man for a glass of water, walking is thirsty work"
module Pt5ch52

    def self.text_pt5ch52(name, pronoun)
        puts house #calling ascii art from ascii textfile
        return typewriter("\n
        As #{name} starts back towards the street... pausing, #{name} stops and turns back to the old mans house...  
        Feeling a little thirsty from the walk, and the cold biting through #{pronoun} jacket, 
        #{name} decides to ask the old man for a glass of water, and maybe for another story. 
        The old man answers the door, there is a fire crackling in the background and #{name} can feel the warmth coming from within. 
        The old man happily obliges and stands aside as #{name} enters his home.
        Sitting by the fire he brings #{name} a cup of tea and asks what it is #{name} has been trying to find. 
        Handing him the piece of paper, #{name} tells him they're not sure what it was exactly, 
        just that they had been feeling a little lost lately and a colleague had given them this address with little instruction - just that #{name} would find what they were missing. 
        The old man smiles and leans back in his chair and says ... 
        'Well, we haven't properly introduced ourselves, I am the Wish Granter, and I grant you three wishes.'")
    end


    def self.text(name, pronoun)
        puts Rainbow("-------------------------").lightcoral
        # calling ascii art from ascii textfile
        puts winner
        puts congrats
        prompt = TTY::Prompt.new
        option = prompt.select("* What would you like to do?") do |menu|
            menu.choice "start over"
            menu.choice "exit the game"
        end
        if option == "start over"
            puts Startover.text_startover(name, pronoun)
        else option == "exit the game"
            return
        end
    end
end
