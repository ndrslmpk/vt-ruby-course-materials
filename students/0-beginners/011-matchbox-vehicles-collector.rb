class Vehicle
  attr_accessor :type, :name, :production_year, :power, :number_of_wheels

  def self.sound_the_horn
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end
end

class Car < Vehicle
  attr_accessor :windows_count

  def self.sound_the_horn
    puts "beeeeep"
  end
end

class Motorbike < Vehicle
  attr_accessor :has_windshield

  def self.sound_the_horn
    print "bip"
  end
end

class QuadBike < Vehicle
  attr_accessor :has_windshield

  def self.sound_the_horn
    print "bipbip"
  end
end

class Bicycle < Vehicle
end
