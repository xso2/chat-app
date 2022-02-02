class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages #1つのチャットルームに、メッセージは複数存在します。
  validates :name, presence: true
end
