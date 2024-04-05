require 'rails_helper'

RSpec.describe 'welcome page', type: :feature do
  describe 'As a user' do
    before(:each) do
      
    end
    # VCR.use_cassette('fire_nation_members') do
      it 'should display fire nation members' do
        # When I visit "/"
        visit '/'   
        # And I Select "Fire Nation" from the select field
        select 'Fire Nation', from: 'nation'
        # (Note: Use the existing select field)
        # And I click "Search For Members"
        click_button('Search For Members')
      # Then I should be on page "/search"
        expect(current_path).to eq('/search')
      # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
        expect(page).to have_content('Total number of people: 20')
      # And I should see a list with the detailed information for the first 25 members of the Fire Nation.


      # And for each of the members I should see:
      # - The name of the member (and their photo, if they have one)
      # - The list of allies or "None"
      # - The list of enemies or "None"
      # - Any affiliations that the member has
      end
    # end
  end
end