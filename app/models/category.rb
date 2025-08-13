class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :categorygroup_id, presence: true
  belongs_to :categorygroup
end
