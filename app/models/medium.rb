class Medium < ActiveRecord::Base

  validates :name, :meta, :kind, presence: true
  
end
