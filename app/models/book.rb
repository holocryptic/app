class Book < ActiveRecord::Base
  attr_accessible :author, :name
  has_many :posts
  accepts_nested_attributes_for :posts
end
