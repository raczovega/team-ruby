require_relative 'fish'

class SheatFish < Fish
  attr_accessor :whisker_length
  
  def initialize(weight, whisker_length)
    super(weight)
    @whisker_length = rand(20...50)
  end
  
  def to_s
    "SheatFish with weight #{@weight} and whisker length #{@whisker_length}"
  end
end