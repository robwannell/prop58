class Endorsement < ActiveRecord::Base
 
 
 
default_scope  {order 'ranking ASC', 'lastname ASC', 'organization ASC'}
   
   validates :category, presence: true
end
