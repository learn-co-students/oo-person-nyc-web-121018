# creating a class called "Person"
# This class should be able to do the following:
# Remember the person's name
# This person needs to have a bank account that starts at $25. This amount can
# change positively or negatively in either direction.
# This person has happiness and hygiene points that start at 8 but exceed 10
# or fall below 0


require "pry"

# your code goes here

class Person
  #a new person is instantiated with a name
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(donkey)
    if donkey > 10
      @happiness = 10
    elsif donkey < 0
      @happiness = 0
    else
    @happiness = donkey
  end
  end


  def hygiene=(smelly)
    @hygiene = smelly
    if smelly > 10
      @hygiene = 10
    elsif smelly < 0
      @hygiene = 0
    end
  end


  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    reply = "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    song = "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    song = "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness += 3
    name.happiness += 3
    response = "Hi #{name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      'blah blah blah blah blah'
    end
  end

end #end of person class
