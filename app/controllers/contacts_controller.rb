class ContactsController < ApplicationController
 def new
   @contact = Contact.new
   @person = Person.new
 end
 
 def create
  @contact = Contact.new(contact_params)
 
  if @contact.save
    redirect_to @contact
  else
    render 'new'
  end
 end 
 
 def show
   @contact = Contact.find(params[:id])
 end
 
 def index
  @contacts = Contact.all
 end
 
 private
  def contact_params
    params.require(:contact).permit(:name, :mail, :phone)
  end
  
end
