class Contact 
  
  include ActiveModel::Model

  attr_accessor :firstname, :lastname, :email, :message, :type, :endorser, :mailingaddress, :city, :state, :zip, :phone, :language

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
 
end

