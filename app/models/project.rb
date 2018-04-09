class Project < ApplicationRecord
	has_many :features
	has_many :products, through: :features

	has_many :jobs
	has_many :tasks, through: :jobs

	has_many :artifacts
	has_many :documents, through: :artifacts

end
