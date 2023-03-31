class User < ApplicationRecord

  has_many :gamecontents

  # Checking username presence
  validates :username, presence: true 

  # Checking email address presence, uniqueness, and format to contain @ symbol in the middle of the entered text
  validates :email_address, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address which includes the '@' symbol" }
  
  # Checking password presence
  validates :password, presence: true

end
