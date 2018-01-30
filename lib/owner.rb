class Owner
  attr_accessor :pets
  @@all_owners = 0
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
    @@all_owners += 1
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
    

end
