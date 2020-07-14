class City < ActiveRecord::Base
	validates :name_city, presence: true
end
