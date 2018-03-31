class Centaur
  attr_reader :name,
              :breed

  def initialize(name, horse_breed)
    @name = name
    @breed = horse_breed
    @posture = "standing"
    @has_run_or_shot_bow = 0
  end

  def shoot
    @has_run_or_shot_bow += 1
    "Twang!!!"
  end

  def run
    @has_run_or_shot_bow += 1
    "Clop clop clop clop!!!"
  end

  def cranky?
    return true if @has_run_or_shot_bow % 3 == 0 && @has_run_or_shot_bow != 0
    return false
  end

  def standing?
    @posture == "standing"
  end
end