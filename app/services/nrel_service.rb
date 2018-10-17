class NrelService
  def initialize(zip)
    @zip = zip
  end

  def get_stations
    get_json("/api/alt-fuel-stations/v1/nearest.json?location=#{@zip}&limit=10&fuel_type=E85,ELEC&api_key=#{ENV['API_KEY']}")
  end

  private

  def conn
    conn = Faraday.new(url: ENV['ROOT_URL'])
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
