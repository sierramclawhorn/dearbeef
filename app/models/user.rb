class User < ApplicationRecord
  has_secure_password

  has_many :posts

  validates :password, confirmation: true
  validates_presence_of :username
  validates_uniqueness_of :username

end