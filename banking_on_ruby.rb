class Account 
  attr_reader :name, :balance 
  def initialize(name, balance = 100)
  @name = name 
  @balance = balance 
  end
  private
  def pin
  @pin = 1234
  end
  def pin_error
  "Access denied: incorrect PIN."
  end
  end