# your code goes here
require 'pry'
class Person 

  attr_accessor :bank_account, :happiness, :hygiene
  # attr_writer 
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # def happiness= num
    #   if num > 10
    #       @happiness = 10
    #   elsif num < 0
    #       @happiness = 0
    #   else
    #       @happiness = num
    #   end
    # end

    def happiness
      @happiness.clamp(0,10)
  end

  #   def hygiene= num
  #     if num > 10
  #       @hygiene = 10
  #   elsif num < 0
  #       @hygiene = 0
  #   else
  #       @hygiene = num
  #   end
  # end

  def hygiene
    @hygiene.clamp(0,10)
end


  def happy?
    @happiness >7 ? true : false
  end
  def clean?
    @hygiene > 7 ? true : false
  end
  def get_paid(num)
    @bank_account +=num
        "all about the benjamins"
  end

  def take_bath
    self.hygiene +=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.happiness +=2
    self.hygiene -=3
    "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    self.happiness=(@happiness + 3)
    friend.happiness=(friend.happiness + 3)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(friend, topic)
    case
    when topic == "politics"
      self.happiness=(@happiness -2)
      friend.happiness=(friend.happiness - 2)
      return "blah blah partisan blah lobbyist"
    when topic == 'weather' 
      self.happiness=(@happiness + 1)
      friend.happiness=(friend.happiness + 1)
      return "blah blah sun blah rain"
    else 
      return "blah blah blah blah blah"
    end
  end
end
