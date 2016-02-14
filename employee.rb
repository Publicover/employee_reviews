class Employee
  attr_accessor :name, :email, :phone_number, :salary, :review,
                :satisfactory_performance, :review_score
  def initialize(name: nil, email: nil, phone_number: nil, salary: nil)

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

  def give_indv_raise(total_raise)
      @salary += total_raise
  end

  def read_review_add_to_employee(string)
    value_score = 0
    value_score += 1 if string.scan(/good/i)
    value_score += 1 if string.scan(/amazing/i)
    value_score += 1 if string.scan(/well/i)
    value_score += 1 if string.scan(/hard/i)
    value_score += 1 if string.scan(/knowledgeable/i)
    @review_score = value_score
  end




end





# def make_a_contact(first_name: nil, last_name: nil , company_name: nil)
#   puts "#{first_name} #{last_name}"
#   puts "(#{company})" if company_name
# end
