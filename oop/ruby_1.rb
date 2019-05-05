class Computer
    @@computers = []
    attr_accessor :name, :price, :weight, :screen_size, :resolution
  
    def initialize(name, features)
      @name = name
      @price = features[:price] || not_implement
      @weight = features[:weight] || not_implement
      @screen_size = features[:screen_size] || not_implement
      @resolution = features[:resolution] || not_implement
      save
    end
  
    def ==(other)
      price == other.price
    end
  
    def to_s
      %(
        Name:           #{name}
        Price:          #{price}
        Screen size:    #{screen_size}
        Weight:         #{weight}
        Resolution:     #{resolution}
      )
    end
  
    class << self
      def min(attr)
        send("#{attr}s".to_sym).min
      end
  
      def max(attr)
        send("#{attr}s".to_sym).max
      end
  
      %i[price screen_size weight resolution].each do |attr|
        define_method("#{attr}s") do
          all.map(&attr)
        end
      end
  
      def all
        @@computers
      end
    end
  
    private
  
    def save
      @@computers << self
    end
  
    def not_implement
      'not implement'
    end
  end
  #if you want to see computers
  puts "Do you want to see computers informations?(1/0)"
  answer = gets.to_i

  computer_1 = Computer.new('dell', price: 1000, screen_size: 15.6)
  computer_2 = Computer.new('apple', price: 2000, screen_size: 17.3)
  
  if answer == 1
    puts computer_1
    puts computer_2
  else
  puts "You didn't want to see informations about compters."
  #puts "What do you want to see ?"
  end
  
  puts "Price of Dell"
  puts computer_1.price
  puts "Screen size of Dell:"
  puts computer_1.screen_size
  puts "Are the prices equal?"
  puts computer_1 == computer_2
  

  puts "Minimum price is:"
  p Computer.min(:price)
  puts "Maximum screen size is:"
  p Computer.max(:screen_size)