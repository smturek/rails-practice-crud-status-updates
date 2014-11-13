class Status < ActiveRecord::Base

  validates :name, :status, :likes, :presence => true

end
