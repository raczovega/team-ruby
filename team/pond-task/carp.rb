class Carp < Fish
    attr_accessor :color
  
    @@colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple']
  
    def initialize(color = nil)
      super()
      @color = color || @@colors.sample
    end
  end
  