class Player
  attr_accessor :lives, :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def is_alive
    @lives > 0
  end
end


    # random_name = ["Marcy", "Francis", "Simon", "Erin"].sample

