class Owner
  attr_accessor :name

  @@counter = 0

  def initialize(name)
    @name = name
    @@counter = +=1
  end

  def all
    @@all?
  end

end
