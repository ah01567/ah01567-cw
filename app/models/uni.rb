class Uni < ApplicationRecord
  has_many :departments, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
end
