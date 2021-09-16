class PostImage < ApplicationRecord
  belongs_to :user #投稿ユーザーとのアソシエーション
  attachment :image #画像アップ用メソッド（refileを使用するためのルール）
  has_many :post_comments, dependent: :destroy
end
