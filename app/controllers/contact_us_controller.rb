class ContactUsController < FrontendController
  def index
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      flash[:notice] = "Contact was successfully Sent."
    else
      flash[:error] = "Contact was Failed sent."
    end
    redirect_to contact_us_path
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end