class Itune < ApplicationRecord
  attr_accessor :collectionCensoredName, :trackCensoredName, :artistViewUrl, :collectionViewUrl, :trackViewUrl, :previewUrl, :artworkUrl30, :artworkUrl60, :artworkUrl100, :collectionPrice, :trackPrice, :releaseDate, :collectionExplicitness, :trackExplicitness, :discCount, :discNumber, :trackCount, :trackNumber, :country, :currency, :primaryGenreName, :isStreamable, :trackTimeMillis, :collectionArtistId, :collectionArtistViewUrl,:trackRentalPrice,:collectionHdPrice, :trackHdPrice,:trackHdRentalPrice, :contentAdvisoryRating, :shortDescription, :longDescription, :hasITunesExtras, :collectionArtistName,:amgArtistId,:description,:copyright,:feedUrl,:artworkUrl600,:genreIds,:genres
  scope :kind, -> (kind) { where kind: kind }
  scope :search, -> (search_term) { where('name LIKE ?', "%#{search_term}%") }
end
