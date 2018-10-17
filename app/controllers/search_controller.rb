class SearchController < ApplicationController
  def index
    @searchresults = StationSearch.new
  end
end
