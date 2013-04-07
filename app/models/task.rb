class Task < ActiveRecord::Base
    belongs_to :project
  attr_accessible :active, :skill, :summary, :title
end
