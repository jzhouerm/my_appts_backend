class Task < ApplicationRecord

    # attr_accessor :id, :name, :description, :amount
    #THE LINE ABOVE RETURN ATTRIBUTES RETURN WITH NIL VALUE

    belongs_to :project

end
