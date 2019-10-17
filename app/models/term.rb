class Term < ApplicationRecord
  belongs_to :book  # 辞書
  belongs_to :category  # カテゴリ

  validates :word, presence: true # 辞書ID
  validates :word, presence: true # カテゴリID
  validates :word, presence: true, length: { in: 1..255 } # 単語名
  validates :furigana, presence: true, length: { in: 1..255 } # ふりがな
  validates :summary, presence: true, length: { in: 1..65535 }  # 用語説明
end
