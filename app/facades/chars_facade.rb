class CharsFacade
  def self.find_char_by_affiliation(affiliation)
   CharsService.call_db("/api/v1/characters?affiliation=#{affiliation}")
  end
end