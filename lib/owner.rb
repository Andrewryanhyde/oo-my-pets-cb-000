class Owner
  attr_accessor :name
  attr_reader :species

  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@counter += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@counter = 0
  end

  def self.count
    @@counter
  end

  def say_species
    return "I am a human."
  end


end
