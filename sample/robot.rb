class Robot
    attr_accessor :name, :owner
    def initialize(name, owner)
        @name, @owner = name, owner 
    end
#Greeting feature
    def say_hello
        puts "Hello! My name is #{name}. #{owner} created me."
    end
#Calculate feature
    def math
        puts "I can calculate two number"
        puts "Give me first number for calculate"
            num1 = gets.to_f
        puts "Now give me second number."
            num2 = gets.to_f
        puts "To collect numbers  [1]"
        puts "To extact numbers   [2]"
        puts "To multiply numbers [3]"
        puts "To divide numbers   [4]"
            digit = gets.to_i
        if digit == 1
            total = num1 + num2
        elsif digit == 2
            total = num1 - num2
        elsif digit == 3
            total = num1 * num2
        elsif digit == 4
            total = num1 / num2
        else
            puts "You entered wrong digit"
        end
        print "Total result is: "
        puts total
    end

end

turk_bot = Robot.new("Jordan", "Orkhan")
turk_bot.say_hello
puts turk_bot.name
puts turk_bot.owner
turk_bot.math