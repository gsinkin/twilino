class Message < ActiveRecord::Base
  attr_accessible :mobile

  validates :mobile, :presence => true, :length => {:minimum => 10, :maximum => 15}
end
