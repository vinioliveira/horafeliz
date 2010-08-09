class Hora < ActiveRecord::Base

    validates_presence_of :type, :user, :date

    belongs_to :user

end

