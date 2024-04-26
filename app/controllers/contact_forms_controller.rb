class ContactFormsController < ApplicationController

    def new
        @contact_form = ContactForm.new
    end

    def create
        @contact_form = ContactForm.new(contact_form_params)
      
        if @contact_form.save
          ContactFormMailer.with(contact_form: @contact_form).thank_you_email.deliver_now
          flash[:success] = "Your message has been sent successfully."
          redirect_to :root
        else
          render :new
        end
      end
      

      private

def contact_form_params
  params.require(:contact_form).permit(:name, :last_name, :email, :message)
end


end