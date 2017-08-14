class User < ApplicationRecord
  has_many :equities

  has_secure_password
end
