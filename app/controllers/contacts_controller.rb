class ContactsController < ApplicationController
	def index
		 @contacts = Contact.all
	end

	def new
	 @contact = Contact.new
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
