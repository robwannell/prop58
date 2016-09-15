class News < ActiveRecord::Base
 extend FriendlyId
   friendly_id :title, use: :slugged
   
 has_attached_file :avatar, styles: { medium: "585x380#>", thumb: "120x80>" }, default_url: "/images/missing.png"


 validates_attachment :avatar,
   content_type: { content_type: ["image/jpg", "image/JPEG", "image/JPG", "image/jpeg", "image/gif", "image/png"] }
   
    default_scope  {order 'published_at DESC'}
    
end
