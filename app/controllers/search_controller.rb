class SearchController < ApplicationController
  def index
    @search_results = StationSearch.new.stations
  end
end
