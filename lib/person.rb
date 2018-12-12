require 'pry'
#create person class
class Person
#name you cant change, remember their name
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account #:happiness
# attr_writer :happiness

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness=(happiness)
  if happiness <= 10 && happiness >= 0
    @happiness = happiness
  elsif happiness > 10
    @happiness = 10
  elsif happiness < 0
    @happiness = 0
  end
end

def hygiene=(hygiene)
  if hygiene <= 10 && hygiene >= 0
    @hygiene = hygiene
  elsif hygiene > 10
    @hygiene = 10
  elsif hygiene < 0
    @hygiene = 0
  end
end

def happy?
   @happiness > 7
end

def clean?
   @hygiene > 7
end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
   self.hygiene = self.hygiene + 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

# - call_friend method , accepts another instance of person, friend, should increase happy pts by 3
# - start a conversation
#work_out method should +happiness by 4, decreases hygiene by 3, return string "♪ another one bites the dust ♫"
# - state if they are happy and/or clean
def work_out
    self.happiness += 2
    self.hygiene -= 3
      "♪ another one bites the dust ♫"
end


def call_friend(friend)
  self.happiness += 3 #if happiness < 10
  friend.happiness += 3 #if friend.happiness < 10
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    # make self and person sadder
    self.happiness -= 2
    person.happiness -=2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    person.happiness +=1
      "blah blah sun blah rain"
  else
     "blah blah blah blah blah"
  end
end

end
