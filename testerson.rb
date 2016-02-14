# require './department'
# require './employee'
#
# # def testing_yield
# #   puts "Yield is below."
# #   yield("TESTING")
# #   puts "Yield is above."
# # end
# #
# # testing_yield {|n| puts "This is the yield statment: #{n}"}
# #
# # def gotta_test
# #   puts "before the yield"
# #   yield
# #   puts "after the yield"
# # end
# #
# # gotta_test {puts "TEST THIS SHIT, YO"}
#
# require './employee'
#
# class Department
#   attr_accessor :staff, :dept_name, :employee, :salary
#   def initialize(dept_name: nil)
#     @staff = []
#     @dept_name = dept_name
#
#   end
#
#   def new_staff(employee)
#     @staff << employee
#   end
#
#   def give_raise(total_raise)
#     performance_array = []
#
#     # @staff.each do |good_employee|
#       # if good_employee.satisfactory_performance
#       #   performance_array << good_employee
#       # end
#     # end
#
#     yield
#
#     increase_per = total_raise / performance_array.length
#
#     performance_array.each do |employee|
#       employee.salary += increase_per
#     end
#   end
# end

# def yield_test
#   puts "First puts here."
#   yield
#   puts "Second puts here."
# end
#
# yield_test {puts "this is the yield statement"}
#
# def yield_test2(num)
#   if num > yield
#     puts "num > yield == true"
#   else
#     puts "false"
#   end
# end
#
# def yield_test3
#   if yield == true
#     puts "Success!"
#   end
# end
#
# def yield_test4(a, b)
#   if yield
#     puts "This worked too."
#   end
# end

# def yield_test5(a, b, array)
#   yield
# end

# yield_test2(10) do |num|
#   num = 5
# end
#
# yield_test2(499) do |num|
#   num = 500
# end
#
# yield_test3 do |yield_param|
#   yield_param = true
# end

# def yield_test6
#   puts "Yield test 6 first puts here"
#   yield
#   puts "Yield test 6 second puts here"
# end
#
# def yield_test6_b(a, b)
#   puts a + b
#   puts "yield test 6b math here"
# end
#
# yield_test6 do
#   yield_test6_b(5, 3)
# end

def yield_test7(total_number)
  puts total_number / yield
end

def yield_test7_b(a, b)
  a + b
end

yield_test7(100) do
  yield_test7_b(25, 25)
end

# yield_test4(400, 100) do |x, y|
#   return x > y && x > 20
# end

# yield_test5(100, 10, array) do |a, b, c|
#   c = []
#   if a > b
#     c << a
#   end
# end
