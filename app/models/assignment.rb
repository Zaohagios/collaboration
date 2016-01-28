class Assignment < ActiveRecord::Base

    validates :subject, presence: true, length: { minimum: 3, maximum: 124 }
    validates :body, presence: true, length: { minimum: 1 }
    validates :board, presence: true

end
