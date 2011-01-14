class Project < ActiveRecord::Base
  validates :name, 
            :presence => true,
            :uniqueness => true,
            :length => { :maximum => 100 }
  validates_length_of :notes, :maximum => 300
  validates_length_of :description, :maximum => 300
            
  has_many :tasks
end
