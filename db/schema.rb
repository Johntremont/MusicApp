# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_07_175256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_votes"
    t.bigint "track_id"
    t.index ["track_id"], name: "index_playlists_on_track_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title"
    t.string "album"
    t.string "artist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "playlist_id"
    t.index ["playlist_id"], name: "index_tracks_on_playlist_id"
  end

  add_foreign_key "playlists", "tracks"
  add_foreign_key "tracks", "playlists"
end
