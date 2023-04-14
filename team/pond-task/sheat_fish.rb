require_relative 'fish'

class SheatFish < Fish
  attr_accessor :whiscker_length
  
  def initialize(whiscker_length = nil)
    super()
    @whiscker_length = rand(20...50)
  end
  
  def to_s
    "SheatFish with weight of #{@weight} kg and whisker length of #{@whiscker_length} cm"
  end
end