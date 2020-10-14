class ClientSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :phone, :email, :projects

  # has_many :projects

  def projects
    self.object.projects.map do |project_obj|
      {
        id: project_obj.id,
        user_id: project_obj.user_id,
        client_id: project_obj.client_id,
        name: project_obj.name,
        description: project_obj.description,
        amount: project_obj.amount,
        paid: project_obj.paid,
        start: project_obj.start,
        end: project_obj.end,
        status: project_obj.status
      }
    end
  end

end
