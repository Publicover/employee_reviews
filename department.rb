require './employee'

class Department
  attr_accessor :staff, :dept_name, :employee, :salary
  def initialize(dept_name: nil)
    @staff = []
    @dept_name = dept_name

  end

  def new_staff(employee)
    @staff << employee
  end

  def give_raise(total_raise)
    performance_array = []

    @staff.each do |good_employee|
      if good_employee.satisfactory_performance
        performance_array << good_employee
      end
    end

    increase_per = total_raise / performance_array.length

    performance_array.each do |employee|
      employee.salary += increase_per
    end
  end
end
