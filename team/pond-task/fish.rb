class Fish
    attr_accessor :weight

    def initialize(weight)
        @weight = rand.(1...20)
    end

    def to_s
        "Fish (#{self.class.to_s}) with weight #{@weight}"
    end
end