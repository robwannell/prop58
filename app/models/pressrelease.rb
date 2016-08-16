class Pressrelease < ActiveRecord::Base
 
  validates :title, presence: true
  validates :intro, presence: true
  validates :body, presence: true
  
  
end
