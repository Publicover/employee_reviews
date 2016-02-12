require 'minitest/autorun'
require 'minitest/pride'
require './department.rb'
require './employee.rb'

class EmployeeReviewsTest < Minitest::Test
  def test_classes_exist
    assert Department
    assert Employee
  end

  def test_can_create_employee
    a = Employee.new("Guy Duderson", "the_dude@duderson.com",
                     "555-555-6543", 25_000)
    assert_equal "Guy Duderson", a.name
  end

  def test_can_add_empolyee_to_department
    a = Department.new("Finance")
    b = Employee.new("Guy Duderson", "the_dude@duderson.com",
                     "555-555-6543", 25_000)
    a.new_staff(b)
    c = Employee.new("Kate", "dev@dev.com", "45", 100_000)
    a.new_staff(c)
    assert_equal "Guy Duderson", a.staff[0].name
    assert_equal "Kate", a.staff[1].name
  end

  def test_can_add_whole_buncha_employees_to_department
    a = Department.new("Finance")
    b = Employee.new("Guy Fierie", "human_cheese_fry@food.com",
                     "555-654-6543", 25_000)
    a.new_staff(b)
    c = Employee.new("Yoma Ma", "dabomb.com", "123-456-0101", 30_000)
    a.new_staff(c)
    assert_equal "Guy Fierie", a.staff[0].name
    assert_equal "Yoma Ma", a.staff[1].name
  end

  def test_can_get_employee_name
    a = Employee.new("Guy Duderson", "the_dude@duderson.com",
                     "555-555-6543", 25_000)
    assert_equal "Guy Duderson", a.name
    refute_equal "Jim", a.name
  end

  def test_can_get_department_name
    a = Department.new("Funk")
    assert_equal "Funk", a.dept_name
    refute_equal "of Redundancy Department", a.dept_name
  end

  def test_can_get_all_salaries_in_dept
    a = Department.new("Finance")
    b = Employee.new("Guy Fierie", "human_cheese_fry@food.com", "555-654-6543", 25_000)
    a.new_staff(b)
    c = Employee.new("Yoma Ma", "dabomb.com", "123-456-0101", 30_000)
    a.new_staff(c)
    assert_equal 55_000, a.staff[0].salary + a.staff[1].salary
  end

  def test_employee_can_take_review_text
    a = Employee.new("Jim", "code4Urface@business.com", "300",
                      120_000)
    review = "We're not paying Jim enough. He is a gift to his entire generation."
    assert a.add_review(review)
    assert_equal a.add_review(review), "We're not paying Jim enough. He is a gift to his entire generation."
  end

  def test_employee_performance_is_satisfactory
    a = Employee.new("Jim", "code4Urface@business.com", "300",
                      120_000)
    a.satisfactory?(true)
    assert a.satisfactory_performance
  end

  def test_individual_can_get_raise
    a = Employee.new("Jim", "code4Urface@business.com", "300",
                      120_000)
    a.salary += 50_000
    assert_equal a.salary, 170_000
  end

  def test_entire_department_can_take_a_raise
    a = Department.new("Finance")
    b = Employee.new("Guy Fierie", "human_cheese_fry@food.com", "555-654-6543", 25_000)
    a.new_staff(b)
    c = Employee.new("Yoma Ma", "dabomb.com", "123-456-0101", 30_000)
    a.new_staff(c)
    a.give_raise(50_000)
    assert_equal b.salary + c.salary, 105_000
  end

  # def test_employee_performance_is_satisfactory
  #   puts "hopefully"
  # end



end


# def test_can_create_album_and_get_its_attributes
#   a = Album.new("Daniel B.", 200, 15)
#   assert_equal "Daniel B.", a.name
#   assert_equal 200, a.number
#   assert_equal 15, a.price
# end
