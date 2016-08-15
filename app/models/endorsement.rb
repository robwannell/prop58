class Endorsement < ActiveRecord::Base
 
 
 
 include RankedModel
   ranks :row_order
   
   validates :category, presence: true
end
