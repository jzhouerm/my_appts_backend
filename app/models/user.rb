class User < ApplicationRecord

    # attr_accessor :id, :business_name, :first_name, :last_name, :address, :email, :password
    #THE LINE ABOVE RETURN ATTRIBUTES RETURN WITH NIL VALUE

    has_many :projects
    has_many :tasks, through: :projects
    has_many :clients, through: :projects

    # def p_sorted
    #     Project.all.select{ |p| p.user_id == self.id }.sort_by{ |p| -p.id}
    # end


end

