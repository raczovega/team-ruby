require_relative 'fish'

class SheatFish < Fish
  attr_accessor :whiscker_length
  
  def initialize(whiscker_length = nil)
    super()
    @whisker_length = rand(20...50)
  end
  
  def to_s
    "SheatFish with weight #{@weight} and whisker length #{@whiscker_length}"
  end
end