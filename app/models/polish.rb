class Polish < ActiveRecord::Base
	belongs_to :owner, class_name: "User"
end
