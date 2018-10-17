class SearchController < ApplicationController
  def index
    @search_results = StationSearch.new
  end
end
