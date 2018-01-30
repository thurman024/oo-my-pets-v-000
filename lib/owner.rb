class Owner
  attr_accessor :pets
  @@all_owners = []
  @@owner_count = 0
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
    @@all_owners << self
    @@owner_count += 1
  end

  #Class methods
  def self.all
    @@all_owners
  end

  def self.count
    @@owner_count
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish


end
