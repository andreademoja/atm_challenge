require './lib/atm.rb'
require './lib/account.rb'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs={})
    @name = set_name(attrs[:name])
    @cash = 0
  end

  def create_account()
    @account = Account.new(owner: name)
  end


  private


  def set_name(obj)
    obj == nil ?  missing_name : @name = obj
  end

  def missing_name
    raise 'A name is required'
  end
end
