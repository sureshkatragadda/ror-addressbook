class ContactsController < ApplicationController
	def index
		 @contacts = Contact.all
	end

	def new
	end

	def create
		@contact = Contact.new(contact_params)
		@contact.save
  		redirect_to @contact
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy	
		@contact.destroy
	end

	private
	  def contact_params
	    params.require(:contacts).permit(:name, :phone, :email, :address)
	  end

end
