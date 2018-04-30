class Ship

  class Pirate

    attr_accessor :name, :type, :booty
    @@all = []

    def initialize(name, type, booty)
      @name = name
      @type = type
      @booty = booty
    end

    def self.all
      @@all
    end

    def self.clear
      @@all.clear
    end
  end

end
