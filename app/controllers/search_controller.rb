class SearchController < ApplicationController
  def index
    @search_results = StationSearch.new(params[:q])
  end
end
