class Stock < ActiveRecord::Base
	
	has_one :operation, dependent: :destroyd
end
