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
      if yield(good_employee)
        performance_array << good_employee
      end
    end

    increase_per = total_raise / performance_array.length

    performance_array.each do |employee|
      employee.salary += increase_per
    end
  end

  def give_raise2(total_raise)
    @staff.each do |qualified_employee|
      if yield
        @staff.delete(qualified_employee)
      end
    end
    increase_per = total_raise / performance_array.length
    @staff.each do |employee|
      employee.salary += increase_per
    end
  end

  # def give_raise_yield_statement
  #   employee.salary > 100_000
  # end

#   department.give_raises(5000) do |employee|
#     employee.salary < 100000
#   end

# coders.raise_by_department!(1000.00) {|employee| employee.salary < 99000.00}

end
