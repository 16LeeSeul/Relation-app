class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]
  before_action :check_role, except: [:show]
  
  
  def new
    @song = Song.new
  end
  
  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_url(@song)
    else
      render 'new'
    end
    # TODO: flash msg
  end

  def index
     @songs = Song.page(params[:page]).per(15).order(name: :asc) # 이름순으로 배열
  end

  def show
  end

  def edit
  end
  
  def update
    if @song.update(song_params)
      redirect_to song_url(@song)
    else
      render 'edit'
    end
    # TODO : flash msg
  end
  
  def destroy
    @song.destroy
    redirect_back fallback_location: songs_url
  end
  
  private
  def set_song
    @song = Song.find(params[:id])
  end
  
  def song_params
    params.require(:song).permit(:title, :lyric, :cover)
  end
  
  def check_role
    # redirect_back(fallback_location: root_url) if current_user.profile.role == 'user'
    # if current_user.profile.role == 'admin'
      
    # elsif current_user.profile.role == 'editor'
      
    # else
    #   redirect_back(fallback_location: root_url) 
    # end
    case current_user.profile.role
    when 'admin', 'editor'
    else
      redirect_back(fallback_location: root_url)
    end
  end
end