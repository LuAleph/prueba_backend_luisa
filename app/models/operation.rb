class Operation < ActiveRecord::Base
	has_many :operations, dependent: :destroyd
end
