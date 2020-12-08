class Uni < ApplicationRecord
  belongs_to :student
  has_many :departments, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true

  scope :student_unis, ->(student) { where(['student_id = ?', student.id]) }
end
