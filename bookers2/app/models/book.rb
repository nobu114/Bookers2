class Book < ApplicationRecord
  validates :title, presence: true
  validates :body, length: { maximum: 200 }, uniqueness: true, presence: true
  belongs_to :user
end
