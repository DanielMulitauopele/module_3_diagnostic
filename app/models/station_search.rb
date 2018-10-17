class StationSearch
  def initialize(zip)
    @zip = zip
  end

  def stations
    @stations ||= service.get_stations[:fuel_stations].map do |station_info|
      Station.new(station_info)
    end
  end

  private

  def service
    NrelService.new(@zip)
  end
end
