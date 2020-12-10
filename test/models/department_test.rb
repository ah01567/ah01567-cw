require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @uni = unis(:one)
  end
  #create a new department
  # try to save with 0 department information
  # department info wont be saved
  test 'Empty department name wont be saved' do
    department = Department.new

    department.save
    refute department.valid?
  end
  #Adding department name
  #Assigning department to specific uni
  #Save department info
  test 'Valid department name will be saved' do
    department = Department.new

    department.name = 'computer science'
    department.uni = @uni

    department.save
    assert department.valid?
  end
end
