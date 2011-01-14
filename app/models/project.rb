class Project < ActiveRecord::Base
  validates :name, :presence => true,
            :length => { :maximum => 100 },
            :uniqueness => true
            
  has_many :tasks
end
