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

ActiveRecord::Schema.define(version: 2020_07_30_090937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "itunes", force: :cascade do |t|
    t.integer :"resultCount"
    t.json :"results"
    t.string :"wrapperType"
    t.text :"kind"
    t.integer :"artistId"
    t.integer :"collectionId"
    t.integer :"trackId"
    t.string :"artistName"
    t.string :"collectionName"
    t.string :"trackName"
    t.string :"collectionCensoredName"
    t.string :"trackCensoredName"
    t.text :"artistViewUrl"
    t.text :"collectionViewUrl"
    t.text :"trackViewUrl"
    t.text :"previewUrl"
    t.text :"artworkUrl30"
    t.string :"artworkUrl60"
    t.string :"artworkUrl100"
    t.integer :"collectionPrice"
    t.integer :"trackPrice"
    t.date :"releaseDate"
    t.string :"collectionExplicitness"
    t.string :"trackExplicitness"
    t.integer :"discCount"
    t.integer :"discNumber"
    t.integer :"trackCount"
    t.integer :"trackNumber"
    t.integer :"trackTimeMillis"
    t.string :"country"
    t.string :"currency"
    t.string :"primaryGenreName"
    t.boolean :"isStreamable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end



end
