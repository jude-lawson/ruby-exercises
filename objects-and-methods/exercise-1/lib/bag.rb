class Bag
  attr_reader :count,
              :candies

  def initialize
    @candies = []
    @count = 0
  end

  def empty?
    @count == 0
  end

  def << candy
    @candies.push(candy)
    @count = @candies.length
  end

  def contains?(candy_type)
    @candies.each do |candy|
      if candy.type == candy_type
        return true
      else
        return false
      end
    end
  end
end