class Pressrelease < ActiveRecord::Base
 extend FriendlyId
   friendly_id :title, use: :slugged
   
  validates :title, presence: true
  validates :intro, presence: true
  validates :body, presence: true
  
   default_scope  {order 'publish_at DESC'}
   
end
