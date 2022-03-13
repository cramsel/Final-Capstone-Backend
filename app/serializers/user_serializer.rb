class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :description

  has_many :comments
  has_many :posts
end
