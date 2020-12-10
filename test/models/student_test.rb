require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #create a new student
  # try to save with 0 student information
  # Student info wont be saved
  test 'Invalid student wont be saved' do
    student = Student.new
    student.save
    refute student.valid?
  end
  #Adding student email
  #Assigning student s password
  #Save student info
  test 'valid student will be saved' do
    student = Student.new
    student.email = 'ahmedhenine@gmail.com'
    student.password = 'Ahmedhenine'
    student.save
    assert student.valid?
  end
end
