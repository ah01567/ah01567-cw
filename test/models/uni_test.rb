require 'test_helper'

class UniTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Empty university name wont be saved' do
    uni = Uni.new

    uni.save
    refute uni.valid?
  end

	test 'Save when university name given' do
    uni = Uni.new

    uni.name = 'Surrey'
    uni.location = 'Guildford'

    uni.save
	  assert uni.valid?
  end

	test 'Dont save same university name twice' do
    uni1 = Uni.new
    uni1.name = 'Oxford'
		uni1.location = 'Oxford city'
    uni1.save
		assert uni1.valid?

		uni2 = Uni.new
		uni2.name = 'Oxford'
		uni2.location = 'Oxford city'
    uni2.save
		refute uni2.valid?
  end
end
