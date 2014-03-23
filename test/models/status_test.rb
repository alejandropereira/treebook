require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "a status should require content" do
		status = Status.new
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "a status should require content to have at least 2 characters" do
		status = Status.new
		status.content = "H"
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "a status have user_id" do
		status = Status.new
		status.content = "Hello"
		assert !status.save
	end
end
