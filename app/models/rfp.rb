class Rfp < ApplicationRecord

	has_many :rfconts
	has_many :conts, through: :rfconts

	has_many :oconts
	has_many :others, through: :oconts

end
