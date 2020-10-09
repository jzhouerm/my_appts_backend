class ServiceSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :amount, :appointments

  # has_many :appointments

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
