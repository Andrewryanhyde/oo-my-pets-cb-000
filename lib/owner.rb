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
    @pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets.each do |species, instance|
      if species == :dogs
        instance.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.each do |species, instance|
      if species == :cats
        instance.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.each do |species, instance|
      if species == :fishes
        instance.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.each do |species, instance|
        instance.each do |pet|
          pet.mood = "nervous"
          instance.clear
        end
    end
  end





end
