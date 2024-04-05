class SearchController < ApplicationController
  def index
    @chars = CharsFacade.find_char_by_affiliation(params[:nation])
  end
end