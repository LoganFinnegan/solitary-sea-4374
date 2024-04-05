require 'rails_helper'

RSpec.describe AvatarsService do
  VCR.use_cassette('can_make_API_call_to_database.yml') do
    it 'can make API call to database', :vcr do
      query = AvatarsService.call_db('/api/v1/characters')
      result = query.first

      expect(query).to be_an Array
      expect(result).to be_a Hash
      
      check_hash_structure(result, :_id, String)
      check_hash_structure(result, :allies, Array)
      check_hash_structure(result, :enemies, Array)
      check_hash_structure(result, :photoUrl, String)
      check_hash_structure(result, :name, String)
      check_hash_structure(result, :affiliation, String)
    end
  end
end

