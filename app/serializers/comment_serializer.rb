class CommentSerializer < ActiveModel::Serializer
    attributes :id, :content, :post_id, :author
    # has_many :posts
  end