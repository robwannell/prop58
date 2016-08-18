class News < ActiveRecord::Base
 extend FriendlyId
   friendly_id :title, use: :slugged
   
 has_attached_file :avatar, styles: { medium: "585x380#>", thumb: "120x80>" }, default_url: "/images/missing.png"
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
