class CharsFacade
  def self.find_char_by(key, value)
    params = { key.to_sym => value }
    CharsService.call_db("/api/v1/characters?", params)
  end
end