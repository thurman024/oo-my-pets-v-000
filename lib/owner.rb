class Owner
  attr_accessor :pets
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
    

end
