class SearchController < ApplicationController
  def index
    @chars = CharsFacade.find_char_by('affiliation', params[:nation] )
    require 'pry'; binding.pry
  end
end