class AvatarService
  class << self
    def get_nation_members(nation)
      conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
      response = conn.get("api/v1/characters?affiliation=#{nation}")
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end