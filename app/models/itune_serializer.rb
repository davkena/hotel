class ItuneSerializer < ApplicationRecord
  attributes :collectionCensoredName,:resultCount, :results ,:wrapperType ,:kind, :artistId, :collectionId ,:trackId, :trackTimeMillis
  t.string :"artistName"
  t.string :"collectionName"
  t.string :"trackName"

end