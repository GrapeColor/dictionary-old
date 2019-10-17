class Category < ApplicationRecord
  has_many :terms # 単語

  validates :name, presence: true, length: { in: 1..255 } # カテゴリ名
  validates :export, presence: true, length: { in: 1..255 } # 出力名
end
