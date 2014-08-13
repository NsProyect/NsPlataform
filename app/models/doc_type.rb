class DocType < ActiveRecord::Base
	has_many :reservations
end
