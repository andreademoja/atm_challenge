require './lib/atm.rb'
require './lib/account.rb'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs={})
    @name = set_name(attrs[:name])
  end

  private

  def set_name(obj)
    obj == nil ?  missing_name : @name = obj
  end
end
