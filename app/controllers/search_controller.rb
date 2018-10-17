class SearchController < ApplicationController
  def index
    @search_results = StationSearch.new
    # require "pry"; binding.pry
  end
end
