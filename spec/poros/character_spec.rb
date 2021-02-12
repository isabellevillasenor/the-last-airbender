require 'rails_helper'

describe Character do
  before :each do
    @data = {
      _id: "5cf5679a915ecad153ab68da",
      allies: [
          "Ozai",
          "Zuko "
      ],
      enemies: [
          "Iroh",
          "Zuko",
          "Kuei",
          "Long Feng",
          "Mai",
          "Ty Lee",
          "Ursa "
      ],
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      name: "Azula",
      affiliation: " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
  }
  @character = Character.new(@data)
  end

  it 'exists with attributes' do
    expect(@character).to be_a Character
    expect(@character).to have_attributes(name: @data[:name], photo: @data[:photoUrl], allies: @data[:allies].join(', '), enemies: @data[:enemies].join(', '), affiliation: @data[:affiliation])
  end
end