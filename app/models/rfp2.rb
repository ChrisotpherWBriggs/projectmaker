class Rfp2 < ApplicationRecord
	has_many :rf2conts
	has_many :conts, through: :rf2conts

	has_many :ocont2s
	has_many :others, through: :ocont2s
end
