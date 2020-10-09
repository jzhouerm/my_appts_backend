class Client < ApplicationRecord

    # attr_accessor :id, :first_name, :last_name, :phone, :email
    #THE LINE ABOVE RETURN ATTRIBUTES RETURN WITH NIL VALUE

    has_many :appointments
end
