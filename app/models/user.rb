class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable, :trackable

  has_many :editables # 編集可能ユーザー

  validates :name, presence: true, length: { in: 4..20 }  # ユーザー名
end
