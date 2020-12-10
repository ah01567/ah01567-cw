class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # Used modules for this devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Student entity has many unis (relation)
  # means: a student can choose many unis to apply for
  has_many :unis
end
