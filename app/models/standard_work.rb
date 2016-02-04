class StandardWork < ActiveRecord::Base
    validates :subject, presence: true, length: { minimum: 3, maximum: 124 }
    validates :board, presence: true
end
