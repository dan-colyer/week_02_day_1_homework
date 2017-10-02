require('minitest/autorun')
require('minitest/rg')
require_relative('../part_A.rb')

class TestStudent < MiniTest::Test
  @student

  def setup
    @student = Student.new("Dan", 16)
  end

# Test 1 & 2
  def test_student
    assert_equal("Dan", @student.name)
    assert_equal(16, @student.cohort)
  end

# Test 3
  def test_set_name
  @student.set_name("Fred")
    assert_equal("Fred", @student.name)
  end

  # Test 4
  def test_set_cohort
    @student.set_cohort(15)
    assert_equal(15, @student.cohort)
  end

  # Test 5
  def test_student_speaks
    assert_equal("I can talk!", @student.speaks)
  end

  # Test 6
  def test_favourite_language

    assert_equal("I love Ruby", @student.favourite_language("Ruby"))
  end


end


#
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").
