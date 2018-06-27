class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@counter += 1
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
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

  def pets
    @pets
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[0][0] << fish
  end

end
