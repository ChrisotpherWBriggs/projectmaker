class Cont < ApplicationRecord
	has_many :rfconts
	has_many :rfps, through: :rfconts
end