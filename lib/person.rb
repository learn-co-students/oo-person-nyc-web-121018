


class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account


    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end

    def happiness=(num)
      if num > 10
        @happiness = 10
      elsif num < 0
        @happiness = 0
      else
        @happiness = num
      end
    end

    def hygiene=(num)
      if num > 10
        @hygiene = 10
      elsif num < 0
        @hygiene = 0
      else
        @hygiene = num
      end
    end

    def get_paid(salary)
      self.bank_account += salary
      "all about the benjamins"
    end

    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end

              # Accepts new Person
    def call_friend(friend) #Person.new is a placeholder for now
      self.happiness += 3
      friend.happiness += 3
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(conversant, topic)
      if topic == "politics"
        self.happiness -= 2
        conversant.happiness -= 2
        return "blah blah partisan blah lobbyist"
      elsif topic  == "weather"
        self.happiness += 1
        conversant.happiness += 1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end

    def happy?
      if happiness > 7
        return true
      else
        return false
      end
    end

    def clean?
      if hygiene > 7
        return true
      else
        return false
      end
    end





end
