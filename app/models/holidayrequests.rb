class Holidayrequests < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :datefrom
  validates_presence_of :dateto
  
  
end
