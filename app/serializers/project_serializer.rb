class ProjectSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :client_id, :name, :description, :amount, :paid, :start, :end, :status, :tasks

  # belongs_to :user
  # belongs_to :client
  # belongs_to :service

  def tasks
    self.object.tasks.map do |task_obj|
      {
        id: task_obj.id,
        project_id: task_obj.project_id,
        start: task_obj.start,
        end: task_obj.end,
        note: task_obj.note,
        status: task_obj.status
      }
    end
  end
  
end
