class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :account_balance, :image

  has_many :stocks
end
