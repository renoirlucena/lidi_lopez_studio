class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    if @contact_form.save
      redirect_to root_path, notice: 'Thank you for your submission!'
    else
      render :new
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:first_name, :last_name, :phone, :email, :desired_appointment_date)
  end
end
