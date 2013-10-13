class Post < ActiveRecord::Base
 attr_accessible :body, :name, :book_id
 belongs_to :book  
 has_many :comments
end
