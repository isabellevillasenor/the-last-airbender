require 'rails_helper'

describe 'Search Index Page' do
  it 'allows users to select a nation and reroutes to a search page that shows all members of selected nation' do
    visit root_path

    select 'Fire Nation', from: :nation
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
    #refactoring to get all char count not just first page
    # expect(@characters.count).to eq(20)
  end
end