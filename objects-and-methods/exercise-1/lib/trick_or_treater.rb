require_relative './costume'

class TrickOrTreater
  attr_reader :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    @bag.empty? == false
  end

  def candy_count
    @bag.candies.count
  end

  def eat
    @bag.candies.pop
  end
end