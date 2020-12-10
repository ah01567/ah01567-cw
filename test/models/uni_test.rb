require 'test_helper'

class UniTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @student = students(:one)
  end
  #create a new uni
  #try to save with 0 uni information
  # uni info wont be saved
  test 'Empty university name wont be saved' do
    uni = Uni.new

    uni.save
    refute uni.valid?
  end
  #Adding uni name
  #Assigning uni for specific student
  #Save unis that the student chose
	test 'Save when university name given' do
    uni = Uni.new

    uni.name = 'Surrey'
    uni.location = 'Guildford'
    uni.student = @student

    uni.save
	  assert uni.valid?
  end
  #Same student cannot chose same university twice
	test 'Dont save same university name twice' do
    uni1 = Uni.new
    uni1.name = 'Oxford'
		uni1.location = 'Oxford city'
    uni1.student = @student
    uni1.save
		assert uni1.valid?

		uni2 = Uni.new
		uni2.name = 'Oxford'
		uni2.location = 'Oxford city'
    uni2.student = @student
    uni2.save
		refute uni2.valid?
  end
end
