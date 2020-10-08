class User < ApplicationRecord

    # attr_accessor :id, :business_name, :first_name, :last_name, :address, :email, :password
    #THE LINE ABOVE RETURN ATTRIBUTES RETURN WITH NIL VALUE

    has_many :appointments
    has_many :services, through: :appointments
end

