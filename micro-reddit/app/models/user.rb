class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length:{ in: 4..16}
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
end
