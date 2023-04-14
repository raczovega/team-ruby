class Pond
    attr_accessor :capacity, :state
    
    def initialize
      @capacity = []
      @state = 'poor'
    end
    
    def obtainFish(fish)
      @capacity << fish
      updateState
    end
    
    def lostFish(fish_type)
      fish_to_delete = @capacity.find { |fish| fish.class.to_s == fish_type }
      if fish_to_delete
        @capacity.delete(fish_to_delete)
        puts "#{fish_to_delete.to_s} was lost from the pond."
      else
        puts "There are no #{fish_type} in the pond."
      end
      updateState
    end
    
    def showCapacity
      puts "Current fish in the pond:"
      @capacity.each { |fish| puts "#{fish.to_s}\n"}
    end
    
    def showState
      puts "The pond is #{@state}.\n"
    end
    
    private
    
    def updateState
      case @capacity.length
      when 0..4
        @state = 'poor'
      when 5..10
        @state = 'normal'
      else
        @state = 'rich'
      end
    end
  end