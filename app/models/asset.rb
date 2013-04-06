class Asset < ActiveRecord::Base
    belongs_to :project
 
    has_attached_file :document 
    attr_accessible :document

end