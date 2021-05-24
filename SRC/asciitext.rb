require_relative 'list'

def title
    puts "\n"
    puts "        ▄▄▄█████▓ ██▀███ ▓██   ██▓    ███▄    █  ▒█████  ▄▄▄█████▓   ▄▄▄█████▓ ▒█████     ▓█████▄  ██▓▓█████".red
    puts "        ▓  ██▒ ▓▒▓██ ▒ ██▒▒██  ██▒    ██ ▀█   █ ▒██▒  ██▒▓  ██▒ ▓▒   ▓  ██▒ ▓▒▒██▒  ██▒   ▒██▀ ██▌▓██▒▓█   ▀".red
    puts "        ▒ ▓██░ ▒░▓██ ░▄█ ▒ ▒██ ██░   ▓██  ▀█ ██▒▒██░  ██▒▒ ▓██░ ▒░   ▒ ▓██░ ▒░▒██░  ██▒   ░██   █▌▒██▒▒███  ".red
    puts "        ░ ▓██▓ ░ ▒██▀▀█▄   ░ ▐██▓░   ▓██▒  ▐▌██▒▒██   ██░░ ▓██▓ ░    ░ ▓██▓ ░ ▒██   ██░   ░▓█▄   ▌░██░▒▓█  ▄" .red
    puts "          ▒██▒ ░ ░██▓ ▒██▒ ░ ██▒▓░   ▒██░   ▓██░░ ████▓▒░  ▒██▒ ░      ▒██▒ ░ ░ ████▓▒░   ░▒████▓ ░██░░▒████▒".light_red
    puts "          ▒ ░░   ░ ▒▓ ░▒▓░  ██▒▒▒    ░ ▒░   ▒ ▒ ░ ▒░▒░▒░   ▒ ░░        ▒ ░░   ░ ▒░▒░▒░     ▒▒▓  ▒ ░▓  ░░ ▒░ ░".light_red
    puts "            ░      ░▒ ░ ▒░▓██ ░▒░    ░ ░░   ░ ▒░  ░ ▒ ▒░     ░           ░      ░ ▒ ▒░     ░ ▒  ▒  ▒ ░ ░ ░  ░".light_red
    puts "          ░        ░░   ░ ▒ ▒ ░░        ░   ░ ░ ░ ░ ░ ▒    ░           ░      ░ ░ ░ ▒      ░ ░  ░  ▒ ░   ░   ".light_red
    puts "                    ░     ░ ░                 ░     ░ ░                           ░ ░        ░     ░     ░  ░".light_red
    puts "                          ░ ░                                                              ░                 ".light_red
end

def congrats
    a = Artii::Base.new
    puts a.asciify("CONGRATS!!").magenta
    puts a.asciify("YOU DIDN'T DIE").magenta
    puts Rainbow("               *    *").aliceblue     
    puts Rainbow("   *         '       *       .  *   '     .           * *").aqua
    puts Rainbow("                                                               '").darkorange
    puts Rainbow("       *                *'          *          *        '").gold
    puts Rainbow("   .           *               |               /").palegreen
    puts Rainbow("               '.         |    |      '       |   '     *").violet
    puts Rainbow("                 \*        \   \             /").darksalmon
    puts Rainbow("       '          \     '* |    |  *        |*                *  *").cornsilk
    puts Rainbow("            *      `.       \   |     *     /    *      '").firebrick
    puts Rainbow("  .                  \      |   \          /               *").limegreen
    puts Rainbow("     *'  *     '      \      \   '.       |").aqua
    puts Rainbow("        -._            `                  /         *").darkorange
    puts Rainbow(" ' '      ``._   *                           '          .      '").gold
    puts Rainbow("   *           *\*          * .   .      *").palegreen
    puts Rainbow("*  '        *    `-._                       .         _..:='        *").violet
    puts Rainbow("             .  '      *       *    *   .       _.:--'").darksalmon
    puts Rainbow("          *           .     .     *         .-'         *").cornsilk
    puts Rainbow("   .               '             . '   *           *         .").firebrick
    puts Rainbow("  *       ___.-=--..-._     *                '               '").limegreen
    puts Rainbow("                                  *       *").aqua
    puts Rainbow("                *        _.'  .'       `.        '  *             *").darkorange
    puts Rainbow("     *              *_.-'   .'            `.               *").gold
    puts Rainbow("                   .'                       `._             *  '").palegreen
    puts Rainbow("   '       '                        .       .  `.     .").violet
    puts Rainbow("       .                      *                  `").darksalmon
    puts Rainbow("               *        '             '                          .").cornsilk
    puts Rainbow("     .                          *        .           *  *").firebrick
    puts Rainbow("             *        .                                    '").limegreen
    puts Rainbow("Enjoy your three wishes & thanks for playing!!").cornflower
end

