class Sitio < ActiveRecord::Base
	attr_accessor :image
    has_attached_file :image, styles: { medium: '400x400>', thumb: '48x48>' }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    def self.search(search, page)
	where(['upper(nombre) like ?',
	"%#{search}%".upcase]).paginate(page: page, per_page: 2).order("nombre")
	end


end
