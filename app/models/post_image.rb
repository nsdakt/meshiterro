class PostImage < ApplicationRecord
  belongs_to :user #アソシエーション記述
  attachment :image #画像アップ用メソッド（refileを使用するためのルール）

end
