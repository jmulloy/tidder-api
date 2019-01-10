class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :upvote
     belongs_to :user
  end