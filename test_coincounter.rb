require "minitest/autorun"
require_relative "coincounter.rb"

class TestCoincounter < Minitest::Test

# Simple test to ensure basic shell of test file and required_relative is in place
	def test_1_1_returns_1
		assert_equal(1,1)
	end

	def test_2_penny_in_penny_out
		assert_equal({:penny => 1}, coinchanger(1))
	end

	def test_3_78_in_3_quarters_3_penny_out
		assert_equal({:quarter => 3, :penny => 3},coinchanger(78))
	end

	def test_4_100_in_4_quarters_out
		assert_equal({:quarter => 4},coinchanger(100))
	end

	def test_5_one_of_each_out
		assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 1},coinchanger(41))
	end

	def test_6_big_money
		assert_equal({:quarter => 395, :penny => 1},coinchanger(9876))
	end

	def test_6_big_money_with_all_coins
		assert_equal({:quarter => 75, :dime => 1, :nickel => 1, :penny => 3},coinchanger(1893))
	end

end
