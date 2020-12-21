class Meal
    attr_accessor :waiter, :customer, :total, :tip
    @@all = []

    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

end