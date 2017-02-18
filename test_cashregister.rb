require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

# Simple test to ensure basic shell of test file and required_relative are in place
	def test_1_1_returns_1
		assert_equal(1,1)
	end

	def test_1_decimal_based_coin
		assert_equal({:quarter => 1},cash_register(0.25,0.50))
	end

    def test_2_decimal_based_dollars
		assert_equal({:five => 1, :dollar => 4, :quarter => 2},cash_register(10.50,20.00))
	end

	def test_3_count_up_to_test_all
		assert_equal({:fifty => 1, :twenty => 1, :ten => 1, :five => 1, :dollar => 1, :quarter => 1, :dime => 1, :nickel => 1, :penny => 1},cash_register(13.59,100.00))
	end

	def test_4_increment_penny_output
		assert_equal({:fifty => 1, :twenty => 1, :ten => 1, :five => 1, :dollar => 1, :quarter => 1, :dime => 1, :nickel => 1, :penny => 2},cash_register(13.58,100.00))
	end
end
