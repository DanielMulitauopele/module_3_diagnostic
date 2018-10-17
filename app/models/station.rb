class Station
  def initialize(info)
    @info = info
    @name = info[:station_name]
    @address = info[:street_address]
    @fuel_types = info[:fuel_type_code]
    @distance = info[:fuel_type_code]
  end
end
