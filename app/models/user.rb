class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :email, uniqueness: true

  before_validation {email.downcase!}

  has_secure_password
  validates :password, length: { minimum: 6 }, on: :create

  has_many :photos
  has_many :favorites, dependent: :destroy
end
