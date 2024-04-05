require 'rails_helper'

RSpec.describe AvatarsFacade do
  before(:each) do
    @avatar = {
      "_id": "5cf5679a915ecad153ab68d5",
      "allies": ["His "],
      "enemies": ["Korra "],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/6/6f/Arik.png/revision/latest?cb=20140808184002",
      "name": "Arik",
      "affiliation": "Earth Kingdom Air Force"
    }
  end

  describe 'class methods' do

    # VCR.use_cassette('can_search_nearby_atms.yml') do
      it 'can get all characters', :vcr do
        avatars = AvatarsFacade.get_all_chars
        
        r = avatars.first
        
        expect(avatars).to be_an Array
        expect(r).to be_a Hash
      end
    # end

    # VCR.use_cassette('can_search_nearby_atms.yml') do
      it 'can get character by id', :vcr do
        avatar = AvatarsFacade.find_char_by_id(@avatar[:_id])
        expect(avatar).to be_a Hash
      end
    # end

    # VCR.use_cassette('can_search_nearby_atms.yml') do  
      it 'can get character by param', :vcr do
        avatars = AvatarsFacade.find_char_by('enemies', 'aang')
        
        r = avatars.first
        
        expect(avatars).to be_an Array
        expect(r).to be_a Hash
      end
    # end

    # VCR.use_cassette('can_search_nearby_atms.yml') do  
      it 'can get a random character', :vcr do
        avatar = AvatarsFacade.random_char
        
        expect(avatar).to be_an Array
      end
    # end

    # VCR.use_cassette('can_search_nearby_atms.yml') do  
      it 'can get random characters by count', :vcr do
        avatars = AvatarsFacade.random_chars_by_count(6)
        
        r = avatars.first
        
        expect(avatars).to be_an Array
        expect(r).to be_a Hash
      end
    # end

    # VCR.use_cassette('can_search_nearby_atms.yml') do  
      it 'can get all avatars', :vcr do
        avatars = AvatarsFacade.get_all_avatars
        
        r = avatars.first
        
        expect(avatars).to be_an Array
        expect(r).to be_a Hash
      end
    # end
  end
end