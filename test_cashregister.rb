require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

# Simple test to ensure basic shell of test file and required_relative is in place
	def test_1_1_returns_1
		assert_equal(1,1)
	end

	def test_1_decimal_based_coin
		assert_equal({:quarter => 1},cash_register(0.25,0.50))
	end

    def test_2_decimal_based_dollars
		assert_equal({:five => 1, :dollar => 4, :quarter => 2},cash_register(10.50,20.00))
	end


end
