require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Invalid student wont be saved' do
    student = Student.new
    student.save
    refute student.valid?
  end

  test 'valid student will be saved' do
    student = Student.new
    student.email = 'ahmedhenine@gmail.com'
    student.password = 'Ahmedhenine'
    student.save
    assert student.valid?
  end
end
