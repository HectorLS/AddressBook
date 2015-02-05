class EmailsController < ApplicationController

	def new
		@contact = Contact.find params[:contact_id]
		@email = @contact.emails.new
	end

	def create
		@contact = Contact.find params[:contact_id]
		@email = @contact.emails.new email_params

		if @email.save
			redirect_to contact_path(@contact.id)
		else
			render 'new'
		end
	end

	def edit
	end

	def destroy
	end

	private
	def email_params
		params.require(:email).permit(:e_address)
	end
end
