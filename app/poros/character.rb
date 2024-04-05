class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :id
  
  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @id = data[:_id]
  end
end