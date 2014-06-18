class Apartment < ActiveRecord::Base
  belongs_to :state
  has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }
end
