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
    increase_per = total_raise / @staff.length
    @staff.each do |employee|
      employee.salary += increase_per
    end
  end

  # def make_new_department(dept_name: nil)
  #   Department.new if dept_name
  # end

end


# def make_a_contact(first_name: nil, last_name: nil , company_name: nil)
#   puts "#{first_name} #{last_name}"
#   puts "(#{company})" if company_name
# end

# def initialize
#   @grid = Grid.new
# end
#
# def ships
#   @grid.ships
# end
