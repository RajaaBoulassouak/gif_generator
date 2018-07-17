class User < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password, require: true

  has_secure_password
end
