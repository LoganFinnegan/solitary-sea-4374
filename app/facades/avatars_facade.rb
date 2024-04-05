class AvatarsFacade 
  def self.get_all_chars
    characters = AvatarsService.call_db("/api/v1/characters")
    # characters.map { |character| Character.new(character) }
  end

  def self.find_char_by_id(char_id)
    AvatarsService.call_db("/api/v1/characters/#{char_id}")
  end
  
  def self.find_char_by(key, value)
    params = { key.to_sym => value }
    AvatarsService.call_db("/api/v1/characters?", params)
  end
  
  def self.random_char
    AvatarsService.call_db("/api/v1/characters/random")
  end

  def self.random_chars_by_count(count)
    params = { count: count }
    AvatarsService.call_db("/api/v1/characters/random?", params)
  end

  def self.get_all_avatars
    avatars = AvatarsService.call_db("/api/v1/characters/avatar")
    # avatars.map { |avatar| Avatar.new(avatar) }
  end
end