class Player < ApplicationRecord
  has_secure_password

  validates :display_name , presence: true
  validates :email , presence: true, uniqueness: true
end
