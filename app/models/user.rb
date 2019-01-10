class User < ApplicationRecord
    validates :username
    validates :password
    has_many :posts
end
