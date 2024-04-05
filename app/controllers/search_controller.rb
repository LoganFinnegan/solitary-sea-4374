class SearchController < ApplicationController
  def index
    require 'pry'; binding.pry
    @avatars = AvatarsFacade.find_char_by('affiliation', params[:name])
  end
end