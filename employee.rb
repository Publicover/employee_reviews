class Employee
  attr_accessor :name, :email, :phone_number, :salary, :review,
                :satisfactory_performance
  def initialize(name, email, phone_number, salary, review = nil,
                 satisfactory_performance = nil)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary

  end

  def add_review(review)
    @review = review
  end





end


# def make_a_contact(first_name: nil, last_name: nil , company_name: nil)
#   puts "#{first_name} #{last_name}"
#   puts "(#{company})" if company_name
# end
