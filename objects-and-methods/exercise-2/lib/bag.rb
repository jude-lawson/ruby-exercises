class Bag
  attr_reader :count,
              :candies

  def initialize
    @count = 0
    @candies = []
  end

  def empty?
    @count == 0
  end

  def << candy
    @candies.push(candy)
    update_count
  end

  def update_count
    @count = @candies.length
  end

  def contains? candy_type
    @candies.each do |candy|
      return true if candy.type == candy_type
      return false
    end
  end

  def grab candy_type
    @candies.each do |candy|
      # require 'pry';binding.pry
      if candy.type == candy_type
        selected_candy =  @candies.delete(candy)
        update_count
        return selected_candy
      end
    end
  end

  def take(number_of_candies)
    taken = []
    number_of_candies.times do
      candy = @candies.pop
      taken << candy
    end
    update_count
    taken
  end

end