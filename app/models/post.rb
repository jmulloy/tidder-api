class Post < ApplicationRecord
    validates :title
    validates :content
    validates :upvotes
   
    belongs_to :user
end
