class UserSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :business_name, :first_name, :last_name, :address, :email, :password, :projects, :clients, :tasks
  
  # has_many :appointments
  # has_many :services, through: :appointments


  # def projects
  #   self.object.projects.map do |project_obj|
  #     {
  #       id: project_obj.id,
  #       user_id: project_obj.user_id,
  #       client_id: project_obj.client_id,
  #       name: project_obj.name,
  #       description: project_obj.description,
  #       amount: project_obj.amount,
  #       paid: project_obj.paid,
  #       start: project_obj.start,
  #       end: project_obj.end,
  #       status: project_obj.status,

  #       client_first_name: project_obj.client.first_name,
  #       client_last_name: project_obj.client.last_name,
  #       client_phone: project_obj.client.phone,
  #       client_email: project_obj.client.email

  #   end
  # end




  def projects
  projects_array = []
  self.object.projects.map do |project|
  # attribute :projects do |user|
    # user.projects.each do |project|
      project_obj = { 
        id: project.id,
        user_id: project.user_id,
        client_id: project.client_id,
        name: project.name,
        description: project.description,
        amount: project.amount,
        paid: project.paid,
        start: project.start,
        end: project.end,
        status: project.status,
        client_first_name: project.client.first_name,
        client_last_name: project.client.last_name,
        client_phone: project.client.phone,
        client_email: project.client.email,
        tasks: []}
        # byebug
        if project.tasks.length > 0
          project.tasks.each do |task|
              task_obj = { 
                id: task.id,
                project_id: task.project_id,
                start: task.start,
                end: task.end,
                note: task.note,
                status: task.status
              }
              project_obj[:tasks] << task_obj
            end
          end

        projects_array << project_obj
    end
    projects_array
  end


  def clients
    self.object.clients.uniq do |client_obj|
      {
        id: client_obj.id,
        first_name: client_obj.first_name,
        last_name: client_obj.last_name,
        phone: client_obj.phone,
        email: client_obj.email
      }
    end
  end


  def tasks
    self.object.tasks
  end





end

