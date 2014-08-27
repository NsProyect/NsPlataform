class Reservation < ActiveRecord::Base
  belongs_to :doctype
  belongs_to :apartment
end
