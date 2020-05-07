class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end  
  
  def show
    @playlist = Playlist.find(params[:id])
  end 

  def new
    @playlist = Playlist.new
  end 

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
        redirect_to playlists_path, notice: "creado exitosamente"
    else
      render :new    
    end
      
  end 

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_playlist
    @playlist = Playlist.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def playlist_params
    params.require(:playlist).permit(:name, :number_of_votes)
  end

end
