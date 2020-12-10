class Uni < ApplicationRecord
  # Uni entity belongs to the student entity (relation)
  # Uni entity is related to many department
  # means: Student can apply for many departments for the same uni
  # Adding validation to the uni name
  belongs_to :student
  has_many :departments, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  # Adding scope so each student can see only unis he chose
  scope :student_unis, ->(student) { where(['student_id = ?', student.id]) }
end
