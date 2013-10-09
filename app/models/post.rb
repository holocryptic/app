class Post < ActiveRecord::Base
 attr_accessible :body, :name
 belongs_to :book  
 has_many :comments
end
