class Guest
  attr_reader :guest
  @@all = []

  def initialize(guest)
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    self.trips.map { |trip| trip.listing }
  end

  def trips
    Trip.all.select { |trip| trip.guest == self }
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    self.all.select { |guest| guest.trips.length > 1 }
  end

  def self.find_all_by_name(name)
    self.all.select { |guest| guest.name == name }
  end
end