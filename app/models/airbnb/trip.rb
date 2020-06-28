class Trip
  attr_reader :listing, :guest
  attr_accessor :trips

  @@all = []

  def initialize(listing, guest)
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end
end