class CharactersFacade
  class << self
    def get_nation_members(nation)
      results = AvatarService.get_nation_members(nation)
      @characters = results.map do |character|
        Character.new(character)
      end
    end
  end
end