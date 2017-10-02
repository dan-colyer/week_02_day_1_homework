require('minitest/autorun')
require('minitest/rg')
require_relative('../part_A.rb')

class TestStudent < MiniTest::Test
  @student

  def setup
    @student = Student.new("Dan", 16)
  end

# Test 1
  def test_student
    assert_equal("Dan", @student.name)
    assert_equal(16, @student.cohort)
  end
end
