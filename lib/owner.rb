class Owner
  attr_accessor :name

  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @@all << self
    @@counter += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@counter
  end

  def self.count 
    @@counter
  end
end
