class StationSearch
  def stations
    conn = Faraday.new(url: ENV['ROOT_URL'])
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
