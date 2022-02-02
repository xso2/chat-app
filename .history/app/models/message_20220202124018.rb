class Message < ApplicationRecord
  belongs_to :room #1つのメッセージは、1つのチャットルームに存在します
  belongs_to :user #1つのメッセージは、1人のユーザーから送信されます。
  has_one_attached :image
  validates :content, presence: true #空の場合はDBに保存しないというバリデーション
end
