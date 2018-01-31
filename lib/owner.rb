class Owner
  attr_accessor :pets
  attr_reader :name, :species
  @@all_owners = []
  # @@owner_count = 0
  def initialize(name)
    @name = name
    @species = human
    @pets = {fishes: [], cats: [], dogs: []}
    @@all_owners << self
    # @@owner_count += 1
  end

  #Class methods
  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.size
  end

  def self.reset_all
    @@all_owners.clear
  end

  #instance methods

  def say_species
    self.species
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

end
