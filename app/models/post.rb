class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  CLUBS = %w[Art Books Business Food Gaming History Jokes Movies Music Nature Sports Tech Television].freeze

  validates :title, presence: true, length: { in: 5..40 }
  validates :body, presence: true, length: { minimum: 5 }
  validates :club, presence: true
end
