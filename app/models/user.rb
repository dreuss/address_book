class User < ActiveRecord::Base
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  attr_accessible :first_name, :last_name
end
