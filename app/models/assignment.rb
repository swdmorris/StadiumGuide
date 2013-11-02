class Assignment < ActiveRecord::Base
	belongs_to :city
	belongs_to :league
end
