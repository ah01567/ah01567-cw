require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @uni = unis(:one)
  end

  test 'Empty department name wont be saved' do
    department = Department.new

    department.save
    refute department.valid?
  end

  test 'Valid department name will be saved' do
    department = Department.new

    department.name = 'computer science'
    department.uni = @uni

    department.save
    assert department.valid?
  end
end
