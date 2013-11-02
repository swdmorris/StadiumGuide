class City < ActiveRecord::Base
	has_many :stadium, dependent: :destroy
	has_many :assignment
	has_many :league, through: :assignment
end
