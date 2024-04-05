class AvatarsController < ApplicationController
  def index
    @avatars = AvatarsFacade.get_all_chars
  end

  def show
    @avatar = AvatarsFacade.find_char_by_id(params[:id])
  end

  def example_name
    # @avatars = AvatarsFacade.find_char_by('affiliation', params[:name])
    # @avatars = AvatarsFacade.find_char_by('enemies', params[:name])
    # @avatars = AvatarsFacade.find_char_by('allies', params[:name])
    # @avatar = AvatarsFacade.find_char_by('name', params[:name])
  end

  def random
    @avatar = AvatarsFacade.random_char
  end
end