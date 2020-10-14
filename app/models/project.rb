class Project < ApplicationRecord

    # attr_accessor :id, :user_id, :service_id, :client_id, :start, :end, :note, :status
    #THE LINE ABOVE RETURN ATTRIBUTES RETURN WITH NIL VALUE

    belongs_to :user
    belongs_to :client
    has_many :tasks
end
