class Tattoo < ActiveRecord::Base
	has_many :players #always PLURAL
	belongs_to :villain
	# belongs_to :player	
end
