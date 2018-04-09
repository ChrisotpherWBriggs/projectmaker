class Job < ApplicationRecord
	belongs_to :project
	belongs_to :task
end
