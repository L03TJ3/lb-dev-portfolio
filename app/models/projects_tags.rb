class ProjectsTags < ActiveRecord::Base
  belongs_to :tag
  belongs_to :project
end
