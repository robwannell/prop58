class ContactMailer < ActionMailer::Base
  default from: 'notifier@supportprop58.com'

    def contact_email(firstname, lastname, email, message, type, endorser, mailingaddress, city, state, zip, phone, language, support)
        @firstname = firstname
        @lastname = lastname
        @email = email
        @message = message
        @type = type
        @endorser = endorser
        @mailingaddress = mailingaddress
        @city = city
        @state = state
        @zip = zip
        @phone = phone
        @language = language
        @support = support

        mail(subject: 'Contact message', reply_to: email, to: 'info@supportprop58.com')
    end
end
