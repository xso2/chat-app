class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users  
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end
#これで、roomを削除したとき、roomに関連するmessagesテーブルのレコードとroom_usersテーブルのレコードも、一緒に削除されるように設定できました。