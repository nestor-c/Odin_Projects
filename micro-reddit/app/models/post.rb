class Post < ApplicationRecord
  belongs_to :user 
  validates :title, length: {minimum: 3}
  validates :body, length: {minimum: 10}
  has_many :comments, dependent: :destroy
end
