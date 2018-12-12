require "pry"
class Person
##
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end
#binding.pry

#def happiness=(change)
#  happiness_change(change)
#end

def happiness=(happiness)
  #if if the decrease will bring happiness to less than zero, it can't decrease to less than 0
  #if the increase will bring happiness to greater than 10, it can't increase to more than 10
  #  if self.happiness + change < 0
  #    @happiness = 0
  #  elsif self.happiness + change > 10
  #    @happiness = 10
  #  else self.happiness += change
  #end
  if happiness > 10
    @happiness = 10
  elsif happiness < 0
    @happiness = 0
  else
    @happiness = happiness
  end
end

def hygiene=(hygiene)
  if hygiene > 10
    @hygiene = 10
  elsif hygiene < 0
    @hygiene = 0
  else
    @hygiene = hygiene
  end
end
#binding.pry

def clean?
  if @hygiene > 7
    true
  else
    false
  end
end

def happy?
  if self.happiness > 7
    true
  else
    false
  end
end

def get_paid(salary)
  @bank_account = bank_account + salary
  "all about the benjamins"
end

def take_bath
  self.hygiene+=4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness += 2
  self.hygiene-=3
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == 'politics'
    self.happiness -= 2
    friend.happiness -= 2
    return 'blah blah partisan blah lobbyist'
  elsif topic == 'weather'
    self.happiness += 1
    friend.happiness += 1
    return 'blah blah sun blah rain'
  else
    return  'blah blah blah blah blah'
  end
end

end
