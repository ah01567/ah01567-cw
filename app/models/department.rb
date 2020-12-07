class Department < ApplicationRecord
  belongs_to :uni
  validates :name, :uni, presence: true
end
