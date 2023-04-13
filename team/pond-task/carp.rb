class Carp < Fish
    attr_accessor :color
  
    @@colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple']
  
    def initialize(weight, color = nil)
      super(weight)
      @color = color || @@colors.sample
    end
  
    def to_s
      "Carp (#{self.class.to_s}) with weight #{@weight} and color #{@color}"
    end
  end