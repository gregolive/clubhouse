class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy

  validates :title, presence: true, length: { in: 5..40 }
  validates :body, presence: true, length: { minimum: 5 }
  validates :club, presence: true

  CLUBS = %w[Art Books Business Food Gaming History Jokes Movies Music Nature Sports Tech Television].freeze
  CLUB_IMG = ["fas fa-palette",
              "fas fa-book",
              "fas fa-briefcase",
              "fas fa-utensils",
              "fas fa-gamepad",
              "fas fa-monument",
              "fas fa-laugh-squint",
              "fas fa-ticket-alt",
              "fas fa-music",
              "fas fa-leaf",
              "fas fa-running",
              "fas fa-microchip",
              "fas fa-tv"].freeze
end
