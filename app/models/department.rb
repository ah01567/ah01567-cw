class Department < ApplicationRecord
  # department entity belongs to uni entity (relation)
  # Adding validation to department name
  belongs_to :uni
  validates :name, :uni, presence: true
  # Adding scope so each student can see only departments he chose
  scope :student_departments, ->(student) { joins(:uni).where(['student_id = ?', student.id]) }
end
