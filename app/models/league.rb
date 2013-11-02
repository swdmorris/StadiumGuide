class League < ActiveRecord::Base
	has_many :assignment
	has_many :city, through: :assignment
end
