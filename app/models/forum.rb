class Forum < ActiveRecord::Base
  
  belongs_to :last_poster, :foreign_key => "last_post_by", :class_name => "User"
  
  validates_presence_of     :name
  validates_uniqueness_of   :name, :case_sensitive => false
  
end