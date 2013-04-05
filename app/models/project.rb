class Project < ActiveRecord::Base
    attr_accessible :name, :city, :continent, :country, :overview, :partner_organizations, :subject_tag
    
    has_many :assets, :dependent => :destroy

end
