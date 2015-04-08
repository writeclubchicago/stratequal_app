class Tattoo < ActiveRecord::Base
	belongs_to :player
	belongs_to :villain
end
