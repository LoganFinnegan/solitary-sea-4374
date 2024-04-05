class CharsFacade
  def self.find_char_by_affiliation(affiliation)
   chars = CharsService.call_db("/api/v1/characters?affiliation=#{affiliation}")
   chars.map { |char| Character.new(char) }
  end
end