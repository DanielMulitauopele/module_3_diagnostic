class StationSearch
  def stations
    conn = Faraday.new(url: ENV['ROOT_URL'])

    results = JSON.parse(conn.get("/api/alt-fuel-stations/v1/nearest.json?location=80203&fuel_type=E85,ELEC&api_key=#{ENV['API_KEY']}").body, symbolize_names: true)

    @stations = results[:fuel_stations].map do |station_info|
      Station.new(station_info)
    end
    # require "pry"; binding.pry
  end
end
