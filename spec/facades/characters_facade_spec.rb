require 'rails_helper'

describe CharactersFacade do
  describe '.get_nation_members' do
    it 'gets the first 100 nation members' do
      search = CharactersFacade.get_nation_members("fire+nation")

      expect(search).to be_an(Array)
      expect(search.first).to be_a(Character)
      expect(search.size).to eq(20)
    end
  end
end