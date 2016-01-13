class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = contact_params
		if @contact.save
			LaurierNotifier.send_laurier_an_email(@contact).deliver_later
			flash.notice = "Thank you! I'll be in touch soon!"
			redirect_to root_path
		else
			render :new
		end
	end

	def contact_params
		@contact = Contact.new(params.require(:contact).permit(:name, :email, :phone_number, :message))
	end
end