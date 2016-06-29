class Operation < ActiveRecord::Base
	belongs_to :worker
	has_many :operations, dependent: :destroyd
end
