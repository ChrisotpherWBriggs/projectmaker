class Artifact < ApplicationRecord
	belongs_to :project
	belongs_to :document
end
