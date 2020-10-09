class Service < ApplicationRecord

    # attr_accessor :id, :name, :description, :amount
    #THE LINE ABOVE RETURN ATTRIBUTES RETURN WITH NIL VALUE

    has_many :appointments

end
