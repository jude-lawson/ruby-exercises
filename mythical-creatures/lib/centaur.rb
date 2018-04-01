class Centaur
  attr_reader :name,
              :breed,
              :sick

  def initialize(name, horse_breed)
    @name = name
    @breed = horse_breed
    @posture = "standing"
    @energy_spent = 0
    @sick = false
  end
  
  def shoot
    if cranky? || laying?
      "NO!"
    else
      @energy_spent += 1
      "Twang!!!"
    end
  end
  
  def run
    if cranky? || laying?
      "NO!"
    else
      @energy_spent += 1
      "Clop clop clop clop!!!"
    end
  end

  def stand_up
    @posture = "standing"
  end
    
  def sleep
    if standing?
      return "NO!"
    end
    @energy_spent = 0
  end

  def lay_down
    @posture = "laying down"
  end

  def drink_potion
    if rested? && standing?
      @sick = true
    elsif standing?
      @energy_spent = 0
    else
      "NO!"
    end
  end

  def laying?
    @posture == "laying down"
  end

  def cranky?
    return true if @energy_spent % 3 == 0 && @energy_spent != 0
    return false
  end

  def standing?
    @posture == "standing"
  end

  def rested?
    @energy_spent == 0
  end
end