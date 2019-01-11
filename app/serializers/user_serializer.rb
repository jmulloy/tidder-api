class CommentSerializer < ActiveModel::Serializer
    attributes :id, :content
    has_many :posts
  end