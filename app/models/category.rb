class Category < ApplicationRecord
  has_many :events
  has_one_attached :photo
end
