class Fish
    attr_accessor :weight

    def initialize(weight = nil)
        @weight = rand(1...20)
    end
end