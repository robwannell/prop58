class ContactController < ApplicationController
 def new
  
     @contact = Contact.new
     @support = ['Distribute Materials', 'Write an opinion editorial', 'Communicate with employees/members','Volunteer/Speak at local events', 'Write a letter-to-the editor', 'Our organization offers speakers in the following languages (use comment box)']
   end
   
   
   def create
      
     @contact = Contact.new(params[:contact])
     firstname = @contact.firstname
     lastname = @contact.lastname
     email = @contact.email
     message = @contact.message
     type = @contact.type
     endorser = @contact.endorser
     mailingaddress = @contact.mailingaddress
     city = @contact.city
     state = @contact.state
     zip = @contact.zip
     phone = @contact.phone
     language = @contact.language
     
     
    
     @support = params[:support]
     
     if @contact.valid?
       ContactMailer.contact_email(firstname, lastname, email, message, type, endorser, mailingaddress, city, state, zip, phone, language, @support).deliver_now
       redirect_to root_path, notice: 'Thank you - your message has been sent!'
     else
         @support = ['Distribute Materials', 'Write an opinion editorial', 'Communicate with employees/members','Volunteer/Speak at local events', 'Write a letter-to-the editor', 'Our organization offers speakers in the following languages (use comment box)']
       render :new
     end
   end
   
   
   
end
