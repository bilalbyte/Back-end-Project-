class ContactFormMailer < ApplicationMailer
        def thank_you_email
          @contact_form = params[:contact_form]
          mail(to: @contact_form.email, subject: 'Thank you for contacting us')
        end
end
