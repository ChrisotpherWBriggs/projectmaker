class Other < ApplicationRecord
	has_many :oconts
	has_many :rfps, through: :oconts

	has_many :ocont2s
	has_many :rfp2s, through: :ocont2s
end
