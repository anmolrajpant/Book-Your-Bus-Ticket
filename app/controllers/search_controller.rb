class SearchController < ApplicationController
  def show
  	@search_query = params[:search][:search_query]
  	@results = Buslist.where("starting like ?", "%#{@search_query}%")
  end
end
