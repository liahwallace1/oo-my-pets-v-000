class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes:[], dogs: [], cats: []}
  end


  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    dogs = @pets[:dogs]
    dogs.each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    cats = @pets[:cats]
    cats.each {|cat| cat.mood="happy"}
  end

  def feed_fish
    fishes = @pets[:fishes]
    fishes.each {|fish| fish.mood="happy"}
  end

  def sell_pets
    pets.each do |type, pets|
      if type == :dogs
        pets.each {|dog| dog.mood="nervous"}
      elsif type == :cats
          pets.each {|cat| cat.mood="nervous"}
      else
        pets.each {|fish| fish.mood="nervous"}
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
