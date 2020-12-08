class Department < ApplicationRecord
  belongs_to :uni
  validates :name, :uni, presence: true

  scope :student_departments, ->(student) { joins(:uni).where(['student_id = ?', student.id]) }
end
