class Customer
    attr_reader :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def new_meal(waiter, total, tip=0)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.customer == self}
    end

    def waiters
        meals.map {|meal| meal.waiter}
    end
end