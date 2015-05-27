class Appliance < ActiveRecord::Base
	validates_presence_of :name, :port
	validates_uniqueness_of :port
	validates_inclusion_of :port, :in => 2..13, :message => "can only be between 2 and 13."

	belongs_to :user
end
