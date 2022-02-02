class Message < ApplicationRecord
  belongs_to :room #1つのメッセージは、1つのチャットルームに存在します
  belongs_to :user #1つのメッセージは、1人のユーザーから送信されます。
  has_one_attached :image #レコードとファイルを1対1の関係で紐づけるメソッドです。

  validates :content, presence: true, unless: :was_attached?
  #空の場合はDBに保存しないというバリデーション
  def was_attached?
    self.image.attached?
  end
  画像が存在しなければテキストが必要となり、画像があればテキストは不要になる
end
