class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :votes
     belongs_to :user
  end