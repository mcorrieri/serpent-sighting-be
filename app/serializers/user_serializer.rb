class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :profile_pic, :location, :bio
end
