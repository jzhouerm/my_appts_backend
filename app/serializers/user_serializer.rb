class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :business_name, :first_name, :last_name, :address, :email, :password, :appointments
  
  has_many :appointments
  has_many :services, through: :appointments
end

# User Serializer
# class UserSerializer
#   include FastJsonapi::ObjectSerializer
#   attributes :name, :username, :email

#   attribute :projects do |user|
#     projects_array = []
#     user.projects.each do |project|
#       project_obj = { 'id' => project.id, 'name' => project.name, 'lists' => []}
#         project.lists.each do |list|
#           list_obj = { 'id' => list.id,  'name' => list.name, 'tasks' => list.tasks }
#           project_obj['lists'] << list_obj
#         end
#         projects_array << project_obj
#     end
#     projects_array
#   end
# end