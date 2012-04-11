class Address < ActiveRecord::Base
  belongs_to :user
  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true,
            :length => { :is => 2 },
            :inclusion => { :in => Carmen.states.map{|state| state[1]}},
  validates :zip, :presence => true,
            :numericality => { :only_integer => true }

  attr_accessible :city, :state, :street, :zip
end
