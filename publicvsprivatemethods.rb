class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public
  # This about_me method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   
  # This bank_account method can't!

  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

aryan = Person.new("Aryan", 19)
aryan.about_me
aryan.bank_account_number
