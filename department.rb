require './employee'

class Department
  attr_accessor :staff, :dept_name, :employee, :salary
  def initialize(dept_name = "HR")
    @staff = []
    @dept_name = dept_name
    
  end

  def new_staff(employee)
    @staff << employee
  end



end




# def initialize
#   @grid = Grid.new
# end
#
# def ships
#   @grid.ships
# end
