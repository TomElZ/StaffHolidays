class Holidayrequests < ActiveRecord::Base

  validates_presence_of :userid
  validates_presence_of :fullname
  validates_presence_of :datefrom
  validates_presence_of :dateto
  
  validates_length_of :userid, :minimum => 8
  
end
