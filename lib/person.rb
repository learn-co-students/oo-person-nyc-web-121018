require 'pry'
# First you need to create a person class that is initialized with a name that cannot be changed.
class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene
  
  def initialize(name)
    @name = name
    @bank_account = 25 
    @happiness = 8
    @hygiene = 8
  end
  def happiness
    @happiness
  end
  
  def happiness=(amount)
    @happiness = amount
    if @happiness  > 10 
      @happiness = 10
    elsif @happiness  < 0
      @happiness = 0
    end
  end
  
  
  def hygiene=(amount)
    @hygiene = amount
    if @hygiene  > 10 
      @hygiene = 10
    elsif @hygiene  < 0
      @hygiene = 0
    end
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
    return 'all about the benjamins'
  end
  
  def take_bath
    hygiene=(self.hygiene += 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    happiness=(self.happiness += 2)
    hygiene=(self.hygiene -= 3)
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    happiness=(self.happiness += 3)
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      happiness=(self.happiness -= 2)
      person.happiness -= 2
      return 'blah blah partisan blah lobbyist'
      
    elsif topic == "weather"
      happiness=(self.happiness += 1)
      person.happiness += 1
      return 'blah blah sun blah rain'
      
    else
      return 'blah blah blah blah blah'
    end
  end
  
end
