class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :votes
    has_many :comments
  end