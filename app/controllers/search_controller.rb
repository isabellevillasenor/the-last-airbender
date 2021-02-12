class SearchController < ApplicationController
  def index
    params[:nation]["_"]= "+"
    nation = params[:nation]
    get_nation_info(nation)
    # binding.pry
  end

  private

  # def get_data(url, page = nil)
  #   response = conn.get("#{url}#{"?page=#{page}" if page}?affiliation=#{nation}")
  # end

  def get_nation_info(nation)
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    response = conn.get("api/v1/characters?affiliation=#{nation}")
    json = JSON.parse(response.body, symbolize_names: true)
    @members = json.map do |member|
      member[:name]
      # member[:photoUrl]
      # member[:allies]
      # member[:enemies]
      # member[:affiliation]
    end
  end
end