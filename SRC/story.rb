require_relative 'list.rb'



module Pt1ch1
    def self.text(name, pronoun)
        puts 
        Rainbow("#{name} pulls the lid off the manhole and fumbles for the ladder, 
        the brisk air has made #{name}'s hands cold and they fail to get a good grip, 
        slipping and falling for what seems like hours... 
        then the cold harsh slam of #{name}'s body echoes through the quiet streets above. 
        #{name} HAS DIED.").lightcoral

    end
end

module Pt1ch2
    def self.text
    puts 
    Rainbow("#{name} has never been one to back down, picking up the pace they run directly towards the figure, 
    the air bites at #{pronoun} cheeks but it doesn't slow them down. 
    The figure stops and watches as #{name} gets closer, hauntingly un-moved by #{name} running toward them... 
    As #{name} makes it within a few meters of the figure, #{name} can now see that it is an old man... 
    the deep wrinkles in his face make him look like a broken porclain doll. 
    #{name} stops in front of him, waiting for something... anything... 
    The man clears his throat and asks whether #{name} can show him the way to his house nearby, 
    #{name} looks down at the piece of paper in #{pronoun} hand... 
    it's the same street name that the man has asked to go to... ").lightcoral
end

    prompt = TTY::Prompt.new
    option = prompt.select("*What would you like to do?") do |menu|
        menu.choice "tell the man you'd be happy to let him tag along on your journey"
        menu.choice "say nothing and keep going on your way?"
        menu.choice "politely decline... this guy is creepy"
        menu.choice "EXIT"
end

if option == "tell the man you'd be happy to let him tag along on your journey"
    puts Pt2ch21.text(name, pronoun)
elsif option == "say nothing and keep going on your way?"
    puts Pt2ch22.text(name, pronoun)
elsif option == "politely decline... this guy is creepy"
    puts Pt2ch23.text(name, pronoun)
else option == "EXIT"
    puts "no"

end
end

module Pt1ch3
    def self.text
        puts "Looking around,  #{name} see's a park to #{pronoun} left, 
        it's dark and the trees seem almost alive, but it seems better then the unknown at the end of the street.
        #{name} runs into the park and down the cobblestone pathway... 
        the park is quiet except for the rustle of the trees, and the odd hoot of an owl... 
        The path leads through the park and comes out on the very street #{name} is looking for. 
        There are a number of derelict houses on the left and a warehouse on the right... 
        the street lights don't seem to have been serviced in years... 
        it's very dark so making out the street numbers is proving difficult... 
        a flashlight would be really handy right now... " 
    end
prompt = TTY::Prompt.new
option = prompt.select("* What would you like to do?") do |menu|
        menu.choice "blindly walk through the street, hoping to find what your looking for?"
        menu.choice "there was a dirty old bag back in the park, maybe it had a flash light? go check?"
        menu.choice "check the warehouse, maybe someone is working late?"
        menu.choice "EXIT"
    end

    if option == "blindly walk through the street, hoping to find what your looking for?"
        puts Pt3ch31.text(name, pronoun)
    elsif option == "there was a dirty old bag back in the park, maybe it had a flash light? go check?"
        puts Pt3ch32.text(name, pronoun)
    elsif option == "check the warehouse, maybe someone is working late?"
        puts Pt3ch33.text(name, pronoun)
    else option == "EXIT"
        puts "no"
    end
end

module Pt2ch21 
    def self.text
        puts 
        "#{name} smiles at the old man, gesturing to #{pronoun} paper, and says 'Of course, I'm going the same way'. 
        The old man smiles back at #{name}. Walking down the street the man tells #{name} vague stories from his life as #{name} listens intently, 
        the time seems to pass quicker now that #{name} has company and the brisk air doesn't feel as cold anymore... 
        Soon there comes a fork in the road, looking down at the piece of paper #{name} looks puzzled. 
        The man says he thinks it's the road to the left, but mentions his memory is not what it used to be... "
    end
end
