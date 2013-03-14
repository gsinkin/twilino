class Response < ActiveRecord::Base
  belongs_to :message, class_name: Message

  attr_accessible :scale
  validates_associated :message, :presence => true
  validates :scale, :presence => true, :numericality => { :only_integer => true,
                                                          :greater_than_or_equal_to => 0,
                                                          :less_than_or_equal_to => 10 }
end
