require 'pry'

class Person 
  attr_reader :name, :happiness, :hygiene  
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25 
    @happiness = 8
    @hygiene = 8
  end 
  
  def happiness=(happiness)
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
    elsif hygiene  < 0
      @hygiene = 0
    else 
      @hygiene = hygiene  
    end 
  end
  
  def happy? 
    if @happiness > 7
      true 
    else 
      false 
    end 
  end 
  
  def clean? 
    if @hygiene > 7
      true 
    else 
      false 
    end 
  end
  
  def get_paid (cash) 
    @bank_account += cash
    "all about the benjamins"
  end 
  
  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end 
  
  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    "♪ another one bites the dust ♫"
  end 
  
  def call_friend (friend)
    friend.happiness = friend.happiness + 3
    self.happiness = @happiness + 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness = person.happiness - 2
      self.happiness = @happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness = person.happiness + 2
      self.happiness = @happiness + 2
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end 
  end 
  
end 