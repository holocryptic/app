class Post < ActiveRecord::Base
  attr_accessible :body, :name
 belongs_to :books  
 has_many :comments
end
