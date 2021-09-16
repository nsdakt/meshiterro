class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :post_images, dependent: :destroy #投稿した画像とのアソシエーション
  has_many :post_comments, dependent: :destroy #投稿したコメントとのアソシエーション
  has_many :favorites, dependent: :destroy #投稿へのいいねのアソシエーション
end
