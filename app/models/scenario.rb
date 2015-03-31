class Scenario < ActiveRecord::Base
# attr_accessible :scenario, :description, :short_description
  def to_param
	"#{id}-#{scenario}"
  end

  def slug
    scenario.downcase.gsub(" ", "-")  
  end

end

# http://blog.teamtreehouse.com/creating-vanity-urls-in-rails
# http://www.w3schools.com/bootstrap/bootstrap_forms_inputs.asp