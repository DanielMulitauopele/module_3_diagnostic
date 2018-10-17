class StationSearch
  def stations
    conn = Faraday.new(url: ENV['ROOT_URL'])

    results = JSON.parse(conn.get("/api/alt-fuel-stations/v1.json?zip=80203&api_key=#{ENV["API_KEY"]}").body, symbolize_names: true)
    results[:fuel_stations].map do |station_info|
      Station.new(station_info)
    end
  end
end
