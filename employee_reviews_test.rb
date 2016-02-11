require 'minitest/autorun'
require 'minitest/pride'
require './department'
require './employee'

class EmployeeReviewsTest < Minitest::Test
  def test_classes_exist
    assert Department
    assert Employee
  end






end
