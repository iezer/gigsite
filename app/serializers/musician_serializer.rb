class MusicianSerializer < ActiveModel::Serializer
  attributes :id, :name, :instrument, :url
end
