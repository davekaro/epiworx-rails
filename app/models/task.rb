class Task < ActiveRecord::Base
  belongs_to :project
  
  #validates_inclusion_of :status, :in => 'Pending, Ready, In Progress, Done, Complete',
  #    :message => "%{value} is not a valid status"
end
