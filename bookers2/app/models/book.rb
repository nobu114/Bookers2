class Book < ApplicationRecord
    validates :body, length: { maximum: 200 }, uniqueness: true
end
