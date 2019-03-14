class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :author, :likes, :created_at
    # has_many :comments
  end