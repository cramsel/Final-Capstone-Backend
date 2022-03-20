class PostSerializer < ActiveModel::Serializer
  attributes :id, :audio_url, :title, :description, :audio_type

  belongs_to :user
  has_many :comments
  # user = User.find(1)
  # user.as_json(only: [:username])
end
