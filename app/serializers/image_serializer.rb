class ImageSerializer < ActiveModel::Serializer
  attributes :id, :width, :height, :max_width, :max_height, :scaled_width, :scaled_height
end
