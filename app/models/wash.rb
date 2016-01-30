class Wash < ActiveRecord::Base
    validates :title, presence: true, length: { minimum: 3, maximum: 124 }
    validates :completed_by, presence: true
end
