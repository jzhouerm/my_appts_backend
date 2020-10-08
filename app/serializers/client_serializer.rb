class ClientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :phone, :email

  has_many :appointments
end
