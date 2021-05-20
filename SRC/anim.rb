def anim(string)
    string.each_char do |n|
        print n
        slt = rand(0.02..0.08)
        sleep(slt)
    end
    print "\n"
    sltime
end

def sltime
    time = rand(0.5..1.5)
    sleep(time)
end


