require "minitest/autorun"
require_relative "inclass_coinchanger.rb"

class TestFilename < Minitest::Test

# Simple test to ensure basic shell of test file and required_relative are in place
	def test_1_1_returns_1
		assert_equal(1,1)
	end

	def test_2_zero_returns_empty
		result = coinchanger(0)
		assert_equal({},result)
	end

	def test_3_one_returns_penny
		result = coinchanger(1)
		assert_equal({penny: 1},result)
	end

	def test_4_two_returns_two_penny
		result = coinchanger(2)
		assert_equal({penny: 2},result)
	end

	def test_5_five_returns_one_nickel
		result = coinchanger(5)
		assert_equal({nickel: 1},result)
	end

	def test_6_six_returns_one_nickel_one_penny
		result = coinchanger(6)
		assert_equal({nickel: 1, penny: 1}, result)
	end

	def test_7_ten_returns_one_dime
		result = coinchanger(10)
		assert_equal({dime: 1}, result)
	end

	def test_8_twenty_returns_two_dimes
		result = coinchanger(20)
		assert_equal({dime: 2}, result)
	end

	def test_9_twentyone_returns_two_dimes_one_penny
		result = coinchanger(21)
		assert_equal({dime: 2, penny: 1}, result)
	end

	def test_10_twentyfive_returns_one_quarter
		result = coinchanger(25)
		assert_equal({quarter: 1}, result)
	end

	def test_11_fifty_returns_two_quarters
		result = coinchanger(50)
		assert_equal({quarter: 2}, result)
	end

	def test_12_ninetythree_returns_correct_change
		result = coinchanger(93)
		assert_equal({quarter: 3, dime: 1, nickel: 1, penny: 3}, result)
	end

end
