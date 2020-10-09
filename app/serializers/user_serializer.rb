class UserSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :business_name, :first_name, :last_name, :address, :email, :password, :appointments
  
  # has_many :appointments
  # has_many :services, through: :appointments


  def appointments 
    self.object.appointments.map do |appt_obj|
      {
        id: appt_obj.id,
        user_id: appt_obj.user_id,
        service_id: appt_obj.service_id,
        client_id: appt_obj.client_id,
        start: appt_obj.start,
        end: appt_obj.end,
        note: appt_obj.note,
        status: appt_obj.status
      }
    end
  end

end

