class CreateItunes < ActiveRecord::Migration[6.0]
  def change
    create_table :itunes do |t|
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


      t.timestamps
    end
  end
end
