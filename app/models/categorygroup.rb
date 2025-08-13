class Categorygroup < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :categories
end
