class Client < ApplicationRecord

    # attr_accessor :id, :first_name, :last_name, :phone, :email

    has_many :appointments
end
