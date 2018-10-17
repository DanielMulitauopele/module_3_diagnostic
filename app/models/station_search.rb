class StationSearch
  def stations
    conn = Faraday.new(url: ENV['ROOT_URL'])
    response = JSON.parse(conn.get("/api/alt-fuel-stations/v1.json?zip=80203&api_key=#{ENV["API_KEY"]}").body, symbolize_names: true)
    require "pry"; binding.pry
  end
end
