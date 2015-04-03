class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :token, :email
  has_many :recipes
end
