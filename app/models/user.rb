class User < ApplicationRecord
  has_one :student
  has_secure_password
end
