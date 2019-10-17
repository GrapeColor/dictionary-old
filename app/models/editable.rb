class Editable < ApplicationRecord
  belongs_to :book  # 辞書
  belongs_to :user  # ユーザー

  validates :book_id, presence: true  # 辞書ID
  validates :user_id, presence: true  # ユーザーID
end
