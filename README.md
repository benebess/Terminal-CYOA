# **Link to source control repository:**

[Try Not To Die - Benedicte Powell T1A3](https://github.com/benebess/BenedictePowell_T1A3)

# **Software Development Plan:** 

## 1. **Describe** at a high level what the application will do:

It will be a text based Choose Your Own Adventure game in which the user reads segments from a story and is then given a selection of choices, to progress they must choose one of the options, then, based on their choice the story will progress, either leading them to winning the game, or dying and having to start over. 
The game will begin with a title and a breif exlanation of how the game works - the user will be prompted to enter their name, which will be implemented with gets.chomp - the name will be limited to 35 letters which will be checked with a while loop, if the name is all under the 35 letter threshold, the app will then prompt the user to enter a pronoun - pronouns must be either her/his/their for grammatical reasons and will be checked using an IF/ELSE statement to limit the user input. Once the user has entered these things the story beginning will start.  Each story segment will be placed in it's own Method inside of Modules which will be called using IF/ELSE statements connected to the TTY-Prompt gem. Each of these choices that appear using the TTY-Prompt will lead to the next story segment. This will go on as the user selects their choice of story-line until they either die; and are prompted to start over or exit the game, or win the game, prompting a winning message and ascii art. If the user chooses to start over, it will lead to the story beginning again. 

##  **2. Identify** the problem it will solve and **explain** why you are developing it:

This application will be a way to promote reading in a medium that is accessible, fun, humorous and a little dark for adults and young adults alike. 
Reading is not always a fun task for everyone, so by putting it into a game format; such as a choose your own adventure, is a way to make reading fun, light hearted and entertaining for any user. It's also meant to solve the age old problem of boredom! 
I wanted to develop this application to provide a simple and fun way to enjoy a story with the added bonus of being able to make the story incorporate the user, giving it a personalised feel, as well as making something that will will be easy to edit and add to the storyline and choices so that it can be used again and again. 

## 3. **Identify** the target audience:

 My target audience is anyone with a computer and a sense of adventure! 

## 4. **Explain** how a member of the target audience will use it:

This app would be used by the target audience to entertain, cure that pesky boredom and be something they show their friends. 
Eventually there could be room to allow the target audience to submit potential stories to be placed inside the game, allowing for more user interaction. 

# **Develop** a list of features that will be included in the application.

**MODULES** - Modules will be used to contain methods which hold my story segments, DO loops and IF/ELSE Statements. 
**IF/ELSE STATEMENTS** - These will be used for directing the user to the next story depending on their choice and also used for making sure the user enters the correct pronoun for the best grammatical outcome. 
**WHILE & DO LOOPS** - A while loop will be used to limit the users input to below or equal to 35 letters, and do loops will be used for the typewriter effect, and tty-prompt choices. 
**TTY-PROMPT** - Will be used to create a list of choices that the user can then select and will direct them to the next segment of story. 



# **Develop** an **outline** of the user interaction and experience for the application.

The game will begin, a title and instructions will appear, followed by a prompt to get the user to input their name, this will be followed by a prompt for them to enter their preferred pronoun. 
If the user enters a name that is over 35 letters, they will be met with a friendly message to try again, the same goes for if they enter a pronoun other than "her", "his", "their", another friendly message will appear and then they will be able to try again. This is implementing the IF/ELSE Statements, and also While Loops, and this will handle any user input errors. 
Once the story starts, after the initial segment the user will be met with two-three options to choose from, using TTY-Prompt to limit their input and make the application easier to manage. 
Once chosen, using IF/ELSE statements again, the application will then direct the user to the next story segment. If they die during the story, TTY-Prompt will ask the user whether they would like to start again, or exit the game. If they choose to start again, it will take them back to the beginning story segment, but skip the part where they need to input their name/pronoun to eliminate the user having to enter their info again. 

# **Develop** a diagram which describes the control flow of your application. 

Basic flow chart of my application:

![](/Users/bonepile/Desktop/Screen Shot 2021-05-26 at 4.10.00 pm.png)

Flow chart with features added: 

![](/Users/bonepile/Downloads/Untitled Diagram.png)

# **Develop** an implementation plan:

![1](/Users/bonepile/Desktop/1.png)

![2](/Users/bonepile/Desktop/2.png)

![3](/Users/bonepile/Desktop/3.png)

![6](/Users/bonepile/Desktop/6.png)

![before final](/Users/bonepile/Desktop/before final.png)

![final](/Users/bonepile/Desktop/final.png)

# **Design** help documentation which includes a set of instructions which accurately **describe** how to use and install the application.

"Hello and thank you for being interested in downloading my application: Try Not To Die. The following is a detailed instruction manual on how to get, and play, my game. 

First of all you will need to clone my application from my repository, found here: [Try Not To Die](https://github.com/benebess/BenedictePowell_T1A3) 
To clone the repo to your computer, you will need to open your command line application, navigate to where you'd like the files to live on your computer and type the following: 
``` git clone git@github.com:benebess/BenedictePowell_T1A3.git```

Once that is cloned, navigate through the BenedictePowell_T1A3 folder and into the one entitled SRC, then you can move onto the next step. 

The following gems are required by my application, to add them you will need to have bundler which you can install by typing ``` gem install bundler``` 
Once that is successfully installed, you only need to run ``` bundle install ``` in the command line which will bundle install all of the gems required. 

*gem 'tty-prompt', '~> 0.23.1'*
*gem 'colorize', '~> 0.8.1'*
*gem 'rainbow', '~> 3.0'*
*gem 'asciiart', '~> 0.0.10'*
*gem 'artii', '~> 2.1', '>= 2.1.2'*

Once all this is completed, and you are still in the SRC folder in the command line, you can run ```ruby main.rb```

This will begin the game and you can start playing! 

~ Happy adventuring! "