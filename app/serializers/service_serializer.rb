class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :amount

  has_many :appointments
end
