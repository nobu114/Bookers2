class Book < ApplicationRecord
  validates :title, presence: true
  validates :body, length: { maximum: 200 }, uniqueness: true, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
