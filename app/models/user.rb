class User < ApplicationRecord
  has_one :student,
          dependent: :destroy
  has_secure_password

  validates :email, presence:  true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Must be a valid email" }
end
