class Project < ActiveRecord::Base
    attr_accessible :name, :city, :continent, :country, :overview, :partner_organizations, :subject_tag, :moderator_id, :summary, :quote, :community_overview
    
    has_many :assets, :dependent => :destroy
    has_many :tasks, :dependent => :destroy
    
    attr_accessible :main_image, :community_image, :tech_image
    has_attached_file :main_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    has_attached_file :community_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    has_attached_file :tech_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }


end
