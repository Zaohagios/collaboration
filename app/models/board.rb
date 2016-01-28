class Board < ActiveRecord::Base
     validates :name, presence: true, length: { minimum: 3, maximum: 55 }
end
