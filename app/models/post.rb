class Post < ApplicationRecord
    validates :title
    validates :content
    validates :votes
   
    belongs_to :user
end
