class Medium < ActiveRecord::Base

  validates :name, :meta, :type, presence: true
  
end
