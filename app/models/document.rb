class Document < ApplicationRecord
	mount_uploader :document, DocumentUploader
	
	has_many :artifacts
	has_many :projects, through: :artifacts
end
