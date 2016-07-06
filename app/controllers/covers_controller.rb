class CoversController < ApplicationController
  # album cover action
  def cover
    title = album_params[:title]
    artist = album_params[:artist]
    response = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{ENV['LASTFM_KEY']}&artist=#{artist}&album=#{title}&format=json")

    render json: response.body
  end

  private

    def album_params
      params.require(:album).permit(:title, :artist, :cover, :description, :thoughts, :user_id)
    end


end
