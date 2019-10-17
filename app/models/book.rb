class Book < ApplicationRecord
  has_many :editables # 編集可能ユーザー
  has_many :terms # 単語

  validates :title, presence: true, length: { in: 4..30 } # 辞書名
end
