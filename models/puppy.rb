# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
class Puppy
    attr_accessor :name, :age, :breed
     @@all = []
    
     def initialize(params)
        @name = params[:name]
        @age = params[:age]
        @breed = params[:breed]
        @@all << self
    end

    def self.all
        @@all
    end
end