class Product < ApplicationRecord
	has_many :features
	has_many :projects, through: :features
end
