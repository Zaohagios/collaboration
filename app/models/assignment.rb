class Assignment < ActiveRecord::Base

    validates :subject, presence: true, length: { minimum: 3, maximum: 124 }
    validates :board, presence: true
    validates :due_date, presence: true

end
