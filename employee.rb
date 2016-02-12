class Employee
  attr_accessor :name, :email, :phone_number, :salary, :review
  def initialize(name, email, phone_number, salary, review = nil)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @review = review 
  end






end
