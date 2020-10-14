class TaskSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :project_id, :start, :end, :note, :status

end
