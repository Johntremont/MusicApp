class AddTrackToPlaylists < ActiveRecord::Migration[6.0]
  def change
    add_reference :playlists, :track, foreign_key: true
  end
end
