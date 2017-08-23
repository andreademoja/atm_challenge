require 'date'

class Account
  STANDARD_VALIDITY_YRS = 5
  attr_accessor :exp_date, :balance, :account_status, :pin_code, :owner

  def initialize(attrs ={})
    @exp_date = set_expire_date
    @pin_code = generate_pin
    @balance = attrs[:balance] || 0
    @account_status = :active
    @owner = set_owner(attrs[:owner])
  end

  def set_expire_date
    Date.today.next_year(STANDARD_VALIDITY_YRS).strftime("%m/%y")
  end

  def initialized
    @pin_code = generate_pin
  end

  def deactivate
    @account_status = :deactivated
  end

  private


    def set_owner(obj)
      obj == nil ?  missing_owner : @owner = obj
    end

   def generate_pin
     rand(1000..9999)
   end

   def missing_owner
     raise "An Account owner is required"
  end
end
