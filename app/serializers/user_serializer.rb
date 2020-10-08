class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :business_name, :first_name, :last_name, :address, :email, :password
  
  has_many :appointments
  has_many :services, through: :appointments
end
