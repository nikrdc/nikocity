class Medium < ActiveRecord::Base
  validates :name, :meta, :kind, :image, presence: true
  validates :kind, inclusion: { in: ['Movie', 'TV show', 'Video game', 'Music', 'Book'] }
  has_attached_file :image, :default_url => ActionController::Base.helpers.asset_path('missing.png')
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
