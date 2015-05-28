class Appliance < ActiveRecord::Base
	validates_presence_of :name, :port, :image
	# validates_uniqueness_of :port
	validates_inclusion_of :port, :in => 2..12, :message => "can only be between 2 and 12."

	belongs_to :user

end
