class ContactsController < ApplicationController


	def index
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find params[:id]
	end

	def new
		@contact = Contact.new
		# @phone = @contact.phones.new
		# @email = @contact.emails.new
	end

	def create
		@contact = Contact.new contact_params
		if @contact.save
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	def edit
		@contact = Contact.find params[:id]
		render 'edit'
	end

	def search
		@contacts = Contact.search(params[:search])
		render 'index'
	end


	def destroy
	end


	private
	def contact_params
		params.require(:contact).permit(:name, :address)
	end	
end
