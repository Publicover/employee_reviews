require 'minitest/autorun'
require 'minitest/pride'
require './department'
require './employee'

class EmployeeReviewsTest < Minitest::Test
  def test_classes_exist
    assert Department
    assert Employee
  end

  def test_can_create_employee
    a = Employee.new("Guy Duderson", "the_dude@duderson.com", "555-555-6543", 25_000)
    assert_equal "Guy Duderson", a.name
  end

  def test_can_add_empolyee_to_department
    a = Department.new("Guy Duderson")
    assert_equal "Guy Duderson", a.staff
  end

  def test_can_add_whole_buncha_employees_to_department
    a = Department.new(["Guy", "Bert", "Ernie"])
    assert_equal ["Guy", "Bert", "Ernie"], a.staff
  end

  def test_can_get_employee_name
    a = Employee.new("Guy Duderson", "the_dude@duderson.com", "555-555-6543", 25_000)
    assert_equal "Guy Duderson", a.name
  end



end


# def test_can_create_album_and_get_its_attributes
#   a = Album.new("Daniel B.", 200, 15)
#   assert_equal "Daniel B.", a.name
#   assert_equal 200, a.number
#   assert_equal 15, a.price
# end
