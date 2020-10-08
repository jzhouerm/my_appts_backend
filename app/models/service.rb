class Service < ApplicationRecord

    # attr_accessor :id, :name, :description, :amount

    has_many :appointments

end
