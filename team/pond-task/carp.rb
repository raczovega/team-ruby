class Carp < Fish
    attr_accessor :color
  
    @@colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple']
  
    def initialize(color = nil)
      super()
      @color = color || @@colors.sample
    end
    
    def to_s
      "Carp with weight #{@weight} and color #{@color}"
    end
  end
  