class Post < ApplicationRecord
  validates :body_text, presence: true
  validates :body_text, length: { in: 1..1000 }
end
