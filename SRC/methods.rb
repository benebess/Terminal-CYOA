#user input for name
def yourname(is_test, test_string)
    if is_test
        yourname = test_string
        return yourname
    else 
        yourname = gets.chomp
        #limit name to 35 letters or less
        begin
        while yourname.length >= 35 
            puts "Sorry, that's too long, try again".magenta
            yourname = gets.chomp
        end
        rescue StandardError => e
            puts "An error occurred: #{e.inspect}"
            retry
        end
        return yourname
    end    
#def yourname end
end

#user input for pronoun
def yourpronoun(is_test, test_string)
    if is_test
        yourpronoun = test_string
        return yourpronoun
    else
        #limits users input for grammatical reasons
        yourpronoun = gets.chomp
        if yourpronoun == "her"
            return yourpronoun
        elsif yourpronoun == "his"
            return yourpronoun
        elsif yourpronoun == "their"
            return yourpronoun
        else
            puts "please use one of the suggested pronouns for grammar reasons :D".magenta
            yourpronoun = gets.chomp
        end
    end
#def pronoun end
end