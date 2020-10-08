class AppointmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :service_id, :client_id, :start, :end, :note, :status

  belongs_to :user
  belongs_to :client
  belongs_to :service
end
