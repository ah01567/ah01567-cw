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
  #2 different students cant use same email
  #if the second student uses same email address as the first one,
  # the second student account will be refuted
  test 'Dont save two student having same email' do
    student1 = Student.new
    student1.email = 'ahmedhenine@gmail.com'
    student1.password = 'Ahmedhenine'
    student1.save
		assert student1.valid?

		student2 = Student.new
		student2.email = 'ahmedhenine@gmail.com'
    student2.password = 'Ahmedhenine'
    student2.save
		refute student2.valid?
  end
end
