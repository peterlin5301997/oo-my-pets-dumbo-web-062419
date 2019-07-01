class Owner
  # code goes here
  attr_reader :name, :species, :cats, :dogs

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end

  def Owner.all
    @@all
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @dogs.clear
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @cats.clear
  end

  def list_pets
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end

  def Owner.count
    @@all.length
  end

  def Owner.reset_all
    @@all = []
  end

  def say_species
    return "I am a human."
  end
  
end