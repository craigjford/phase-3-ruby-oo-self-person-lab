#  require 'pry'

 class Person   
    attr_reader :name
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
      @name = name
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
    end   
 
    def happiness=(value)
      if value <= 10 && value >= 0
        @happiness = value 
      elsif value > 10
        @happiness = 10
      else
        @happiness = 0      
      end  
    end  

    def happiness   
      @happiness
    end    

    def hygiene=(value)
      if value <= 10 && value >= 0
        @hygiene = value 
      elsif value > 10
        @hygiene = 10
      else
        @hygiene = 0    
      end  
    end    

    def hygiene   
      @hygiene
    end      

    def clean?
      if @hygiene > 7
        true
      else
        false
      end
    end

    def happy?
      if @happiness > 7
        true
      else
        false
      end
    end

    def get_paid(amount)
      @bank_account += amount 
      "all about the benjamins"  
    end    

    def take_bath 
      value = @hygiene + 4  
      self.hygiene=(value)
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
      value = @happiness + 2 
      self.happiness=(value)
      value = @hygiene - 3  
      self.hygiene=(value)
      "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end  
    
    def start_conversation(friend, topic)
      if topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather" 
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        self.happiness += 0
        friend.happiness += 0
        "blah blah blah blah blah"
      end             
    end    

end

# c1 = Person.new("Craig")
# c2 = Person.new("Naja")
# c1.call_friend(c2.name)
# binding.pry
# 0