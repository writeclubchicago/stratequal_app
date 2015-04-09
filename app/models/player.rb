class Player < ActiveRecord::Base
	# belongs_to :tattoo	
	has_many :tattoos
	has_many :skills #always PLURAL
	has_many :scenarios #always PLURAL
	has_many :player_answers
	has_many :answers, through: :player_answers



  def to_param
	"#{id}-#{last_name.parameterize}"
  end

	def friendly_time
		Time.now.strftime("%I:%M:%S %p") 
	end 

	def friendly_created_at
	 created_at.strftime("%b %e, %l:%M %p")
	end 

	def friendly_updated_at
	 updated_at.strftime("%b %e, %l:%M %p")
	end 

	def sql 
	@sqlplayers = []
	sql = "Select * from players"
	@sqlplayers = ActiveRecord::Base.connection.execute(sql)

# records_array each do |player|
	end 

end
