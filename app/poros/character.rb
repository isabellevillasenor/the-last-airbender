class Character
  attr_reader :name,
              :photo,
              :allies,
              :enemies,
              :affiliation
  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = data[:allies].join(', ')
    @enemies = data[:enemies].join(', ')
    @affiliation = data[:affiliation]
  end
end