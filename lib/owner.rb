class Owner
  attr_reader :species, :name
  attr_accessor :name,:dog, :cat, :species

  @@all = []
 
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self 
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

def cats
  Cat.all.select {|c| c.Owner == self}
end


def dogs
  Dog.all.select {|d| d.Owner == self}
end


  def buy_cat(name)
     Cat.new(name, self)
  end

  def buy_dog(name)
   Dog.new(name, self)
  end

  def walk_dogs
    dogs.each{|d| d.mood = "happy"}
    end
  
  def feed_cats
    cats.each{|c| c.mood  = "happy"}
    end
  
def pets
  pets = []
  pets << dogs
  pets << cats
  pets.flatten
end 
  

  def list_pets
    "I have #{pets[:dogs].length} dog(s) and #{pets[:cats].length} cat(s)."
  end

  def sell_pets
    pets
  end

end