require 'rails_helper'

describe AvatarService do
  describe '.get_nation_members' do
    it 'returns all the characters who live under that nation' do
      results = AvatarService.get_nation_members("Fire+Nation")

      expect(results).to be_an Array
      
      character = results.first
      expect(character).to have_key :name
      expect(character[:name]).to be_a String
      expect(character).to have_key :allies
      expect(character[:allies]).to be_an Array
      expect(character).to have_key :enemies
      expect(character[:enemies]).to be_an Array
      expect(character).to have_key :affiliation
      expect(character[:affiliation]).to be_a String
    end
  end
end