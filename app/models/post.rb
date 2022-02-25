class Post < ApplicationRecord
  validates :title, presence: true
  validates :audio_url, presence: true

  belongs_to :user

  has_many :comments
end
