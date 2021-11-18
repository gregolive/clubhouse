class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 6..40 }
  validates :body, presence: true, length: { minimum: 5 }
end
