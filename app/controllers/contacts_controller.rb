class ContactsController < ApplicationController
	before_action :all_contacts, only: [:index, :create, :update, :destroy]
  	before_action :set_contacts, only: [:edit, :update, :destroy]

	def new
	 @contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
		  else
		    render 'new'
		  end
	end

	def update
	  @contact.update_attributes(contact_params)
	end

	def destroy	
		@contact.destroy
	end

	private
	  def all_contacts
	      @contacts = Contact.all
	  end

	  def set_contacts
	      @contact = Contact.find(params[:id])
      end

	  def contact_params
	    params.require(:contact).permit(:name, :phone, :email, :address)
	  end

end
