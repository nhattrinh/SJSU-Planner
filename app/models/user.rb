class User < ApplicationRecord
  has_one :student,
          dependent: :destroy
  has_secure_password
end
