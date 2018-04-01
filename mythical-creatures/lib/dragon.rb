class Dragon
  attr_reader :name,
              :rider,
              :color

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @meals_eaten = 0
  end

  def hungry?
    return false if @meals_eaten % 3 == 0 && @meals_eaten != 0
    return true
  end

  def eat
    @meals_eaten += 1
  end
end