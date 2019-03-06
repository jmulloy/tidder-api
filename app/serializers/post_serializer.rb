class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :author, :likes
    # has_many :comments
  end