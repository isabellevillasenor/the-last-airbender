class SearchController < ApplicationController
  def index
    params[:nation]["_"]= "+"
    nation = params[:nation]
    @characters = CharactersFacade.get_nation_members(nation)
  end

  # private

  # def get_data(url, page = nil)
  #   response = conn.get("#{url}#{"?page=#{page}" if page}?affiliation=#{nation}")
  # end
end