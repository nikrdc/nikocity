class Medium < ActiveRecord::Base
  validates :name, :meta, :kind, presence: true
  validates :kind, inclusion: { in: ['Movie', 'TV show', 'Video game', 'Music', 'Book'] }  
end
