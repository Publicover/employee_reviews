class Employee
  attr_accessor :name, :email, :phone_number, :salary, :review,
                :satisfactory_performance
  def initialize(name, email, phone_number, salary)

    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary

  end

  def add_review(review)
    @review = review
  end

  def satisfactory?(truefalse)
    @satisfactory_performance = truefalse
  end




end


# def make_a_contact(first_name: nil, last_name: nil , company_name: nil)
#   puts "#{first_name} #{last_name}"
#   puts "(#{company})" if company_name
# end
