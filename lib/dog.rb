class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    owner.dogs << self
    @@all << self
  end

  def Dog.all
    @@all
  end

end