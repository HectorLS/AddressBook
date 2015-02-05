class PhonesController < ApplicationController

	def new
		@contact = Contact.find params[:contact_id]
		@phone = @contact.phones.new
	end

	def create
		@contact = Contact.find params[:contact_id]
		@phone = @contact.phones.new phone_params

		if @phone.save
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
	def phone_params
		params.require(:phone).permit(:number)
	end

end
