class JukeboxController < ApplicationController
  def index
    @artists = Artist.all # sample들을 보여주고 싶으면 뒤에 .sample 개수 붙이면 됨 
    @songs = Song.all
  end
end
